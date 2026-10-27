FROM python:3.9-slim

# Use a dedicated working directory
WORKDIR /app

# Install Python dependencies first for better layer caching
COPY requirements.txt .
RUN pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir -r requirements.txt

# Copy the Flask application
COPY service/ ./service/

# Run the service as a non-root user
RUN useradd --system --uid 10001 appuser \
    && chown -R appuser:appuser /app
USER appuser

# Expose the application port
EXPOSE 8080

# Start the Flask app through Gunicorn
CMD ["gunicorn", "--bind=0.0.0.0:8080", "--workers=2", "--access-logfile=-", "service:app"]
