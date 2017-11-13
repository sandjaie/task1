server {
        listen 80;
        listen [::]:80;
        root /var/www/mythirdpage.com/html;
        index 3.html;
        server_name mythirdpage.com www.mythirdpage.com;
        location / {
                try_files $uri $uri/ =404;
        }
}
