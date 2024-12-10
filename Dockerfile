# Use a Python base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Install the necessary dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 8080, which Cloud Run uses by default
EXPOSE 8080

# Command to run the Flask app
CMD ["python", "api_model.py"]