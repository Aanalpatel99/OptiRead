# Use the official Python image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy requirements.txt and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY . .

# Expose the port (e.g., 5000) for the app to listen on
EXPOSE 8080

# Command to start the application (replace 'app.py' with your main file)
CMD ["python", "app.py"]
