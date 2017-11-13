server {
        listen 80;
        listen [::]:80;
        root /var/www/mysecondpage.com/html;
        index 2.html;
        server_name mysecondpage.com www.mysecondpage.com;
        location / {
                try_files $uri $uri/ =404;
        }
}
