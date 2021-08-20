FROM python:3.7.3-stretch

# Working dir
WORKDIR /app

# Copy source code to working dir
COPY . app.py /app/

# Install packages from requirements
# hadolint ignore=DL3013
RUN pip install --no-cache-dir --upgrade pip &&\
    pip install --no-cache-dir --trusted-host pypi.python.org -r requirements.txt

EXPOSE 80

CMD ["python", "app.py"]