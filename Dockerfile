# FROM python:3.9.13-stretch
FROM python:3.9.13-slim
# Set unbuffered output for python
ENV PYTHONUNBUFFERED 1

# Create app directory
WORKDIR /app
# RUN pipenv sync
# Install app dependencies
RUN pip install --upgrade pip
COPY requirements.txt .
RUN pip install -r requirements.txt

# Bundle app source
COPY . .

# Expose port
EXPOSE 8000

# entrypoint to run the django.sh file
# ENTRYPOINT ["/django.sh"]
# COPY ./django.sh /django.sh
# RUN chmod o+x /django.sh
# ENTRYPOINT ["sh", "-c", "/django.sh"]