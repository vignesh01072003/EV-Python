# Use Python 3.8 instead of Python 3.7.4
FROM python:3.8

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install virtualenv and create a virtual environment
RUN pip install --upgrade pip && pip install virtualenv && virtualenv venv

# Activate the virtual environment and install dependencies
RUN /bin/sh -c ". /app/venv/bin/activate && pip install -r requirements.txt"

# Expose the port the app runs on
EXPOSE 5000

# Command to run the Flask app
CMD ["/bin/sh", "-c", ". /app/venv/bin/activate && python main.py"]

