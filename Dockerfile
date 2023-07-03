# Use the official Python base image
FROM python:3.8.10-slim-buster

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file to the container
COPY requirements.txt .

# Install the required dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code to the container
COPY . .

# Expose the application port
EXPOSE 5000

# Define the command to run the application
CMD ["python", "app.py"]
