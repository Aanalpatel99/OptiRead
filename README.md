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
- **Backend**: Python with Tesseract OCR for text extraction(working on this).
- **Frontend**: Angular.
- **Mobile App Framework**: [To be decided - considering React Native, Flutter, etc.].
- **Deployment**: Planned deployment via cloud services like AWS or Azure.

## Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/yourusername/OptiRead.git
   cd OptiRead

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

# Deployment Process: S3 Block & Agent Configuration
Welcome to the deployment guide for managing your S3 blocks and Prefect agent configurations. This document will walk you through the essential steps for both the initial setup and regular deployment process.

## Initial Setup
During the initial deployment, you'll need to create an S3 block, with a default name set to "prod". If you'd like to change this name, follow these instructions carefully.

1. Create an S3 Block
Default S3 Block Name: prod
Input Parameter: s3_block_name
Important: If you decide to change the S3 block name, make sure you update the S3_BLOCK_NAME in the main.yaml file. Failing to synchronize these names will lead to deployment errors.

2. Configure the Work Queue
Default Work Queue: dataflowops
Variable: PROJECT
Note: The default work queue is set to dataflowops. If you're using a different queue, update the PROJECT variable in the main.yaml file to reflect this change.

## Regular Deployment Process
Once your initial setup is complete, follow these guidelines for subsequent deployments:

3. Prefect Version Synchronization
Variable: PREFECT_VERSION
The PREFECT_VERSION defined during the initial agent deployment can differ from the version specified in main.yaml. However, if you encounter issues due to a version mismatch between your agent and workflow, consider synchronizing the versions to avoid conflicts. In such cases, re-trigger the deployment process by executing the ecs_prefect_agent.yml workflow.

## Troubleshooting
S3 Block Name Mismatch: Ensure that the name is consistently updated across your setup and deployment scripts.
Work Queue Changes: Always verify that any change in the work queue is mirrored in the PROJECT variable within main.yaml.
Prefect Version Conflicts: If deployment issues arise, version synchronization between the agent and workflow may be necessary.

## Conclusion
By following this guide, you can ensure smooth deployment of your Prefect agents and S3 blocks. Stay vigilant when modifying any configurations and ensure consistency across all files to avoid potential errors.


