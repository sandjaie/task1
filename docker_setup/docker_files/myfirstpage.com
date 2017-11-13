server {
        listen 80 default_server;
        listen [::]:80 default_server;
        root /var/www/myfirstpage.com/html;
        index 1.html;
        server_name myfirstpage.com www.myfirstpage.com;
        location / {
                try_files $uri $uri/ =404;
        }
}
