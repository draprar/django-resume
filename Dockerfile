# Use the official Python 3.12 image
FROM python:3.12-slim

# Set the working directory in the container
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy project files
COPY . .

# Expose the application port
EXPOSE 8000

# Run the development server (for local testing)
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
