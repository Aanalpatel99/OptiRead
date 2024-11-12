# OptiRead

OptiRead is a next-generation OCR (Optical Character Recognition) tool designed to extract text from images and documents. Whether you're looking to convert scanned documents, PDFs, or photos into editable and searchable text, OptiRead aims to provide accuracy and efficiency.

**Status**: Ongoing project (just started)

## Features (Planned)
- **Image to Text Conversion**: Upload images to extract text with ease.
- **PDF OCR**: Extract text from PDFs, making them fully searchable.
- **Multi-language Support**: Planned support for multiple languages.
- **Customizable Settings**: Fine-tune OCR settings for optimal performance.
- **Cloud Integration**: Future plans to support cloud storage for uploads and text retrieval.
- **Mobile-friendly**: Mobile app version to be developed for on-the-go scanning.

## Tech Stack
- **Backend**: Python with Tesseract OCR for text extraction (working on this).
- **Frontend**: Angular.
- **Mobile App Framework**: [To be decided - considering React Native, Flutter, etc.].
- **Deployment**: Planned deployment via cloud services like AWS or Azure.

---

## Setup Instructions

### Prerequisites

Make sure you have the following installed:
1. **Python 3.9 or higher**: [Download Python](https://www.python.org/downloads/)
2. **Docker**: [Download Docker](https://www.docker.com/products/docker-desktop)
3. **Git**: [Download Git](https://git-scm.com/downloads)
4. **Google Cloud SDK (Optional for GCP Deployment)**: [Install Google Cloud SDK](https://cloud.google.com/sdk/docs/install)

### Step 1: Clone the Repository

Clone the repository to your local machine:

```bash
git clone https://github.com/your-username/OptiRead.git
cd OptiRead
```

### Step 2: Create a Virtual Environment

To create a virtual environment and activate it:

```bash
python3 -m venv venv
source venv/bin/activate  # On Windows use `venv\Scripts\activate`
```

### Step 3: Install Dependencies

Install the required dependencies using `requirements.txt`:

```bash
pip install -r requirements.txt
```

### Step 4: Set Up Docker (Optional)

If you'd like to use Docker to run the project, follow these steps:

#### Build the Docker Image:

```bash
docker build -t optiread-ocr .
```

#### Run the Docker Container:

```bash
docker run -p 8000:8000 optiread-ocr
```

This will run the service on `localhost:8000`.

### Step 5: Run the Application

To run the project locally:

```bash
python app.py
```

### Step 6: Prefect (Optional)

If using **Prefect** for workflow orchestration, make sure to install it:

```bash
pip install prefect
```

You can start and register flows using:

```bash
prefect deployment create -n ocr_pipeline prefect-deploy.yml
```

### Step 7: GCP Deployment (Optional)

To deploy the application to Google Cloud:

1. **Authenticate with GCP**:
    ```bash
    gcloud auth login
    ```

2. **Deploy to Cloud Run**:
    ```bash
    gcloud run deploy optiread-ocr --image gcr.io/YOUR_PROJECT_ID/optiread-ocr --platform managed
    ```

---
## Dataset
Yet to finalize.
```
from datasets import load_dataset

ds = load_dataset("mychen76/invoices-and-receipts_ocr_v1")
```
```
from datasets import load_dataset

ds = load_dataset("echo840/OCRBench")
```
```
from datasets import load_dataset

ds = load_dataset("e-val/short_ocr_sentences")
```
## Roadmap

- [x] Set up project structure.
- [ ] Basic image-to-text conversion.
- [ ] PDF-to-text conversion.
- [ ] Mobile app integration.
- [ ] Multi-language support.
- [ ] Cloud storage integration.

## Contributing

OptiRead is an open-source project in its early stages. We welcome any contributions or suggestions! Fork the repo, make your changes, and submit a pull request.

## License

This project is licensed under the [MIT License](https://opensource.org/licenses/MIT).
