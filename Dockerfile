# # Use the official Python image from the Docker Hub
# FROM python:3.9

# # Set environment variables
# ENV PYTHONDONTWRITEBYTECODE 1
# ENV PYTHONUNBUFFERED 1

# # Set the working directory
# WORKDIR /code

# # Install dependencies
# COPY requirements.txt /code/
# RUN pip install -r requirements.txt

# # Copy the project
# COPY . /code/



# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Install dependencies
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container at /app
COPY . /app/

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Run Django's development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

