# Use Python 3.8 as the base image
FROM python:3.8

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install virtualenv and create a virtual environment
RUN pip install --upgrade pip && pip install virtualenv && virtualenv venv

# Activate the virtual environment and install dependencies
RUN /bin/sh -c ". /app/venv/bin/activate && pip install -r requirements.txt"

# Expose the port the app runs on (port 5000)
EXPOSE 5000

# Command to run Gunicorn from within the virtual environment
CMD ["/bin/sh", "-c", ". /app/venv/bin/activate && gunicorn -w 4 -b 0.0.0.0:5000 main:app"]

