FROM nginx:alpine

ARG S3_HOSTNAME=s3.openschema.ai
ARG MINIO_HOSTNAME=minio.openschema.ai

COPY conf.d/ /etc/nginx/conf.d/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
