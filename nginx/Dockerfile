FROM nginx:alpine 

ARG S3_HOSTNAME=s3.openschema.ai
ARG MINIO_HOSTNAME=minio.openschema.ai

COPY conf.d/ /etc/nginx/conf.d/

COPY /etc/letsencrypt/live/${S3_HOSTNAME}/fullchain.pem /etc/nginx/certs/${S3_HOSTNAME}/fullchain.pem
COPY /etc/letsencrypt/live/${S3_HOSTNAME}/privkey.pem /etc/nginx/certs/${S3_HOSTNAME}/privkey.pem

COPY /etc/letsencrypt/live/${MINIO_HOSTNAME}/fullchain.pem /etc/nginx/certs/${MINIO_HOSTNAME}/fullchain.pem
COPY /etc/letsencrypt/live/${MINIO_HOSTNAME}/privkey.pem /etc/nginx/certs/${MINIO_HOSTNAME}/privkey.pem

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
