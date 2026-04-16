# Use Python as the base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy your files into the container
COPY . .

# 4. Zaruri libraries install karein
RUN pip install --no-cache-dir -r requirements.txt

# Run the detector script when the container starts
CMD ["python", "-u", "detector.py"]