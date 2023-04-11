# Pull base image
FROM python:3.10.6
RUN pip install --upgrade pip
# Set work directory
WORKDIR /

# Install dependencies
ADD . .
 
CMD python3 server.py 
