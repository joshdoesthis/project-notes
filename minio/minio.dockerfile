FROM minio/minio:latest
ARG MINIO_ROOT_USER=${MINIO_ROOT_USER}
ARG MINIO_ROOT_PASSWORD=${MINIO_ROOT_PASSWORD}
EXPOSE 9000
CMD ["server", "--console-address", ":9001", "/data"]