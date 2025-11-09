FROM nginx:alpine 

ARG HOSTNAME=s3.openschema.ai

COPY conf.d/ /etc/nginx/conf.d/
COPY /etc/letsencrypt/live/${HOSTNAME}/fullchain.pem /etc/nginx/certs/fullchain.pem
COPY /etc/letsencrypt/live/${HOSTNAME}/privkey.pem /etc/nginx/certs/privkey.pem

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
