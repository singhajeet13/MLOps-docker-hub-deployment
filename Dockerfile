## Python Image - official
FROM python:3.9-slim

## Set working dir
WORKDIR /app

## Copy the current directory contents into the container at /app
COPY . /app/

## Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

#make port 5000 available to the world outside this container
EXPOSE 5000

# RUN app,.py when the container launches
CMD ["python", "app.py"]

