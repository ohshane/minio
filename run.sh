sudo ufw allow 80/tcp
sudo ufw allow 443/tcp
sudo ufw reload
sudo ufw status

sudo apt update
sudo apt install certbot -y

sudo certbot certonly --standalone -d s3.openschema.ai --agree-tos --register-unsafely-without-email
