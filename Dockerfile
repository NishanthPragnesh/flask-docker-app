# Use official Python base image
FROM python:3.9

# Set work directory
WORKDIR /app

# Copy app files
COPY . .

# Install dependencies
RUN pip install -r requirements.txt

# Expose port Flask runs on
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]


