FROM python:3.7.3-stretch

# Working dir
WORKDIR /app

# Copy source code to working dir
COPY . app.py /app/

# Install packages from requirements
# Hadolint ignore=DL3013
RUN pip install --no-cache-dir pip=21.2.4 --disable-pip-version-check &&\
    pip install --no-cache-dir --trusted-host pypi.python.org=39 0.0.2.1 --disable-pip-version-check -r requirements.txt