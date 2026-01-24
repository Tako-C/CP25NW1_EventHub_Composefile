# # Redirect HTTP → HTTPS
# server {
#     listen 80;
#     # listen [::]:80;
#     server_name cp25nw1.sit.kmutt.ac.th;
#     return 301 https://$host$request_uri;
# }

# server {
#     listen 8080;
#     # listen [::]:80;
#     server_name cp25nw1.sit.kmutt.ac.th;
#     return 301 https://$host$request_uri;
# }

# # HTTPS server
# server {
#     # listen 443 ssl http2;
#     listen 443 ssl;
#     # listen [::]:443 ssl;
#     server_name cp25nw1.sit.kmutt.ac.th;

#     ssl_certificate     /ssl/fullchain.pem;
#     ssl_certificate_key /ssl/privkey.pem;
#     ssl_dhparam         /ssl/dhparam-2048.pem;

#     ssl_protocols       TLSv1.2 TLSv1.3;
#     ssl_ciphers         HIGH:!aNULL:!MD5;
#     ssl_prefer_server_ciphers on;

#     # Backend API proxy
#     # Backend API proxy
#     location /api/ {
#         # rewrite ^/api/(.*)$ /$1 break;  # ลบ /api/ ออกก่อนส่งไป backend
#         proxy_pass http://eventhub_backend:8080/;
        
#         # ส่ง header ไป backend ให้ครบ
#         proxy_set_header Host $host;
#         proxy_set_header X-Real-IP $remote_addr;
#         proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
#         proxy_set_header X-Forwarded-Proto $scheme;
#         proxy_set_header Authorization $http_authorization;
#         proxy_set_header Cookie $http_cookie;
#     }



#     # Frontend proxy (Next.js)
#     location / {
#         proxy_pass http://eventhub_frontend:3000/;
#         # proxy_set_header Host $host;
#         # proxy_set_header X-Real-IP $remote_addr;
#         # proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
#         # proxy_set_header X-Forwarded-Proto $scheme;
#     }
# }


# # -----------------------------
# # HTTP → HTTPS
# # -----------------------------
# server {
#     listen 80;
#     server_name cp25nw1.sit.kmutt.ac.th bscit.sit.kmutt.ac.th;
#     return 301 https://$host$request_uri;
# }


# # -----------------------------
# # HTTPS Server
# # -----------------------------
# server {
#     listen 443 ssl;
#     server_name cp25nw1.sit.kmutt.ac.th bscit.sit.kmutt.ac.th;

#     ssl_certificate     /ssl/fullchain.pem;
#     ssl_certificate_key /ssl/privkey.pem;
#     ssl_dhparam         /ssl/dhparam-2048.pem;

#     ssl_protocols TLSv1.2 TLSv1.3;
#     ssl_ciphers HIGH:!aNULL:!MD5;
#     ssl_prefer_server_ciphers on;

#     # ==================================================
#     # FRONTEND
#     # ==================================================

#     # root domain
#     location / {
#         proxy_pass http://eventhub_frontend:3000/;

#         proxy_set_header Host $host;
#         proxy_set_header X-Real-IP $remote_addr;
#         proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
#         proxy_set_header X-Forwarded-Proto $scheme;
#     }

#     # /capstone25/cp25nw1/
#     location /capstone25/cp25nw1/ {
#         rewrite ^/capstone25/cp25nw1/(.*)$ /$1 break;

#         proxy_pass http://eventhub_frontend:3000;

#         proxy_set_header Host $host;
#         proxy_set_header X-Real-IP $remote_addr;
#         proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
#         proxy_set_header X-Forwarded-Proto $scheme;
#     }

#     # ==================================================
#     # BACKEND API
#     # ==================================================

#     # /api
#     location /api/ {
#         client_max_body_size 20M;
#         rewrite ^/api/(.*)$ /$1 break;  # ลบ /api/ ออกก่อนส่งไป backend
#         proxy_pass http://eventhub_backend:8080/;

#         proxy_set_header Host $host;
#         proxy_set_header X-Real-IP $remote_addr;
#         proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
#         proxy_set_header X-Forwarded-Proto $scheme;
#         proxy_set_header Authorization $http_authorization;
#         proxy_set_header Cookie $http_cookie;
#     }

#     # # /capstone25/cp25nw1/api/
#     # client_max_body_size 20M;
#     # location /capstone25/cp25nw1/api/ {
#     #     rewrite ^/capstone25/cp25nw1/(.*)$ /$1 break;

#     #     proxy_pass http://eventhub_backend:8080/;

#     #     proxy_set_header Host $host;
#     #     proxy_set_header X-Real-IP $remote_addr;
#     #     proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
#     # }
# }


server {
    listen 443 ssl;
    server_name cp25nw1.sit.kmutt.ac.th;

    ssl_certificate     /ssl/fullchain.pem;
    ssl_certificate_key /ssl/privkey.pem;
    ssl_dhparam         /ssl/dhparam-2048.pem;

    # Frontend สำหรับ cp25nw1
    location /capstone25/cp25nw1/ {
        proxy_pass http://eventhub_frontend:3000;
       
    }

    # API สำหรับ cp25nw1
    location /capstone25/cp25nw1/api/ {
        client_max_body_size 20M;
        # rewrite ^/capstone25/cp25nw1/api/(.*)$ /$1 break;
        proxy_pass http://eventhub_backend:8080/;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
    }
}

# server {
#     listen 443 ssl;
#     server_name bscit.sit.kmutt.ac.th;

#     ssl_certificate     /ssl/fullchain.pem;
#     ssl_certificate_key /ssl/privkey.pem;
#     ssl_dhparam         /ssl/dhparam-2048.pem;

#     # location / {
#     #     proxy_pass http://eventhub_frontend:3000;
#     #     proxy_set_header Host $host;
#     #     proxy_set_header X-Real-IP $remote_addr;
#     # }
    
#     location / {
#         rewrite ^/(.*)$ /capstone25/cp25nw1/$1 break;
#         proxy_pass http://eventhub_frontend:3000; # ไม่มี / ต่อท้าย
        
#         # แทนที่การ include /etc/nginx/proxy_params ด้วยค่าเหล่านี้:
#         proxy_set_header Host $host;
#         proxy_set_header X-Real-IP $remote_addr;
#         proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
#         proxy_set_header X-Forwarded-Proto $scheme;
        
#         # สำหรับ Next.js
#         proxy_http_version 1.1;
#         proxy_set_header Upgrade $http_upgrade;
#         proxy_set_header Connection "upgrade";
#     }
#     location /_next/ {
#         proxy_pass http://eventhub_frontend:3000; # ห้ามมี / ปิดท้าย
#         proxy_set_header Host $host;
#         proxy_set_header X-Real-IP $remote_addr;
#         proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
#         proxy_set_header X-Forwarded-Proto $scheme;
#     }
#     location /api/ {
#         client_max_body_size 20M;
#         rewrite ^/api/(.*)$ /$1 break;
#         proxy_pass http://eventhub_backend:8080/;
#         proxy_set_header Host $host;
#     }
# }
server {
    listen 443 ssl;
    server_name bscit.sit.kmutt.ac.th;
    # ... ssl config ...

    # 1. จัดการ API ก่อน (ใส่ก้อนใหญ่ที่สุดก่อน)
     location /api/ {
        client_max_body_size 20M;
        rewrite ^/capstone25/cp25nw1/api/(.*)$ /$1 break;
        proxy_pass http://eventhub_backend:8080/;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
    }

    # 2. จัดการ Frontend (รับที่ Root / ที่มหาลัย Forward มา)
    location / {
        # เติมหัวกลับเข้าไปให้ Next.js (basePath)
        rewrite ^/(.*)$ /capstone25/cp25nw1/$1 break;
        
        proxy_pass http://eventhub_frontend:3000;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;
        
        proxy_http_version 1.1;
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection "upgrade";
    }
}
