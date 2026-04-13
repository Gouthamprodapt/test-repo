# Use lightweight Python image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy files
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Cloud Run expects port 8080
ENV PORT=8080

# Run app
CMD ["python", "main.py"]
