FROM prefecthq/prefect:latest-python3.8

# Linux dependencies
RUN apt-get update && apt-get install -y git

# Prefect extras for Dask on Kubernetes
RUN pip install "prefect[kubernetes]==1.*"

# base Python dependencies
RUN pip install python-dotenv paramiko