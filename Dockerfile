FROM nginx:alpine

# Hapus file default index.html dari nginx
RUN rm -rf /usr/share/nginx/html/*

# Copy semua file HTML ke folder yang akan diserve nginx
COPY . /usr/share/nginx/html

# Port 80 default untuk nginx, nggak perlu expose kalau di Cloud Run
