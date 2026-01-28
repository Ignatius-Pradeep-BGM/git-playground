# Base image
FROM python:3.10-slim

# Set working directory
WORKDIR /app


# Include requirements
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt


# Copy code
COPY app.py .

# Run program
CMD ["python", "app.py"]

