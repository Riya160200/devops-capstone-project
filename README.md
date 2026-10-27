# DevOps Capstone

[![Build Status](https://github.com/Riya160200/devops-capstone-project/actions/workflows/ci-build.yaml/badge.svg?branch=main)](https://github.com/Riya160200/devops-capstone-project/actions/workflows/ci-build.yaml)
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
[![Python 3.9](https://img.shields.io/badge/Python-3.9-green.svg)](https://shields.io/)

## Project Name
DevOps Capstone Project - Customer Accounts Microservice

## Overview
This repository contains the customer accounts microservice developed as part of the **IBM DevOps and Software Engineering Capstone Project**. It applies agile development practices, Test-Driven Development (TDD), continuous integration workflows using GitHub Actions, security enhancements (Talisman and CORS), containerization using Docker, and cloud-native deployment with Kubernetes and OpenShift Tekton pipelines.

---

## Features
- **RESTful API**: Full CRUD lifecycle operations for managing customer accounts.
- **Test-Driven Development (TDD)**: Comprehensive unit test suite using `nosetests` and coverage reports.
- **Code Quality**: Automated code formatting and linting with `flake8` and `pylint`.
- **Security**: Hardened HTTP security headers using `Flask-Talisman` and Cross-Origin Resource Sharing using `Flask-CORS`.
- **Containerization**: Standardized `Dockerfile` for microservice containerization.
- **Continuous Integration (CI)**: Automated GitHub Actions pipeline validating linting and test coverage on every push.
- **Continuous Delivery (CD)**: Automated deployment pipeline using OpenShift Tekton to Kubernetes.

---

## REST API Endpoints

| Method | Endpoint | Description | Status Code |
| :--- | :--- | :--- | :--- |
| **POST** | `/accounts` | Create a new customer account | `201 CREATED` |
| **GET** | `/accounts` | List all customer accounts | `200 OK` |
| **GET** | `/accounts/<id>` | Read a single customer account | `200 OK` |
| **PUT** | `/accounts/<id>` | Update an existing customer account | `200 OK` |
| **DELETE** | `/accounts/<id>` | Delete a customer account | `204 NO CONTENT` |
| **GET** | `/health` | Health check probe endpoint | `200 OK` |

---

## Development Setup

### 1. Initialize the Environment
In the IBM Skills Network Cloud IDE environment, source the setup script:
```bash
source bin/setup.sh
