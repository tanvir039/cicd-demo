# FROM python:3.8-slim
# WORKDIR /app
# # Copy all files from the current directory to the /app directory (. because we are already in /app -> WORKDIR /app)
# COPY . .
# RUN pip install flask mysqlclient
# EXPOSE 5002
# CMD ["python", "app.py"]

FROM python:3.8-slim

WORKDIR /app

COPY . .

RUN apt-get update && apt-get install -y \
    gcc \
    python3-dev \
    libmariadb-dev \
    pkg-config

RUN pip install flask mysqlclient

EXPOSE 5002

CMD ["python", "app.py"]

# # Stage 1: Build Stage
# FROM python:3.8-slim as Build

# WORKDIR /app

# RUN apt-get update && apt-get install -y \
#     gcc \
#     python3-dev \
#     libmariadb-dev \
#     pkg-config

# COPY . .

# RUN pip install flask mysqlclient

# # Stage 2: Production Stage
# FROM python:3.8-slim

# WORKDIR /app

# COPY --from=Build /app /app

# EXPOSE port 5002

# CMD ["python", "app.py"]
