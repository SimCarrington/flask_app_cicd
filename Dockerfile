# Use an official Python runtime
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy files
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . .

# Expose port
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]
