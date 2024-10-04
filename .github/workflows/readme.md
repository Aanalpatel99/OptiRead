# OptiRead Workflows Repository

This repository contains the workflows and automation pipelines used for the **OptiRead** OCR project. The following sections provide a detailed explanation of the YAML files used for orchestration, deployment, and CI/CD automation, as well as the necessary dependencies.

## Table of Contents
- [Introduction](#introduction)
- [YAML Workflow Files](#yaml-workflow-files)
  - [1. `ci-cd.yml`](#ci-cdyml)
  - [2. `docker-build.yml`](#docker-buildyml)
  - [3. `gcp-deploy.yml`](#gcp-deployyml)
  - [4. `prefect-deploy.yml`](#prefect-deployyml)
- [Requirements](#requirements)
- [How to Use](#how-to-use)
- [Contributing](#contributing)
- [License](#license)

---

## Introduction

This repository is dedicated to managing workflows and automations for **OptiRead**. It includes CI/CD pipelines, Docker setup, and orchestration of machine learning workflows using **Prefect**. These YAML files ensure consistent development, testing, and deployment of the project across different environments.

---

## YAML Workflow Files

### 1. `ci-cd.yml`
This YAML file automates the **continuous integration and deployment** process for the project. The purpose of this file is to run automated tests, validate changes, and deploy the latest version of the project to the relevant environment.

- **Triggers**: 
  - When a pull request is opened/merged
  - When changes are pushed to the `main` or `dev` branch
- **Jobs**:
  - Run linting checks on the code.
  - Execute tests with `pytest`.
  - Deploy to Google Cloud Run or local servers upon successful tests.

### 2. `docker-build.yml`
This file defines the steps required to build and push the **Docker image** for the project. This is useful for containerizing the application and running it in a consistent environment, regardless of where it’s deployed.

- **Steps**:
  - Build the Docker image from the Dockerfile.
  - Tag and push the Docker image to DockerHub or Google Container Registry (GCR).
  - Validate that the Docker container runs correctly.

### 3. `gcp-deploy.yml`
This file manages the deployment of the **OptiRead** project to **Google Cloud Platform (GCP)**. It focuses on deploying the Dockerized application to **Cloud Run** and ensuring it can be accessed publicly or privately.

- **Steps**:
  - Authenticate with GCP using service account credentials.
  - Deploy the latest Docker image to Cloud Run.
  - Set up environment variables required for the application to function.
  - Configure access permissions for public or private endpoints.

### 4. `prefect-deploy.yml`
This file orchestrates **Prefect** workflows for running machine learning pipelines and handling data flows. Prefect enables scheduled runs and monitoring of complex workflows such as OCR text extraction and post-processing tasks.

- **Triggers**:
  - Can be scheduled to run at specific intervals (e.g., daily or weekly).
  - Can be triggered manually or based on data availability.
- **Steps**:
  - Define Prefect flow for OCR pipeline.
  - Register and deploy the Prefect flow to Prefect Cloud.
  - Log the results and update the system status.

---

## Requirements

All dependencies required to run the workflows are listed in the `requirements.txt` file.

### `requirements.txt`
```
docker
google-cloud-sdk
prefect
pytest
tesseract
Flask
gunicorn
```

- **Docker**: Used for containerizing the application.
- **Google Cloud SDK**: Necessary for interacting with GCP services such as Cloud Run.
- **Prefect**: Workflow orchestration and automation.
- **Pytest**: Used for running automated tests.
- **Tesseract**: OCR engine used for text extraction.
- **Flask**: Web framework used to build the backend service.
- **Gunicorn**: WSGI server to deploy Flask applications.

---

## How to Use

1. **Clone the Repository**:

    ```bash
    git clone https://github.com/your-username/OptiRead-workflows.git
    cd OptiRead-workflows
    ```

2. **Run Workflows Locally** (Optional for local testing):
    You can run any of the workflow jobs locally before integrating them with your CI/CD pipelines.
    
    For example, to test the **Docker build workflow**:
    
    ```bash
    docker build -t optiread-ocr .
    docker run -p 8000:8000 optiread-ocr
    ```

3. **Integrate with GitHub Actions**:
    Link the YAML files to your main repository and trigger them upon pushes or pull requests.

4. **Deploy with Prefect**:
    Register your Prefect workflows:
    
    ```bash
    prefect deployment create -n ocr_pipeline prefect-deploy.yml
    ```

5. **Deploy to GCP**:
    Ensure you have GCP authentication set up, and then deploy the project using the `gcp-deploy.yml` workflow.

---

## Contributing

We welcome contributions to improve the workflows and add more automation. If you have suggestions, please fork the repo, make changes, and submit a pull request.
