# Use a minimal base image
FROM python:3.9-slim

# Create a non-root user
RUN useradd -m appuser

# Set the working directory
WORKDIR /app

# Copy dependency file and install packages
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY app.py ./

# Set ownership and switch to non-root user
RUN chown -R appuser:appuser /app
USER appuser

# Expose the app port
EXPOSE 5000

# Start the application
CMD ["python", "app.py"]
