server {
	listen   80; ## listen for ipv4; this line is default and implied
	root /srv/www/foo.bar.com/htdocs;
	index index.php index.html index.htm;
	server_name foo.bar.com www.foo.bar.com;
	server_tokens off;
	
	access_log /srv/www/foo.bar.com/logs/access.log;
  	error_log /srv/www/foo.bar.com/logs/error.log;

	location = /favicon.ico {
    		log_not_found off;
    		access_log off;
  	}
 
	location = /robots.txt {
    		allow all;
    		log_not_found off;
    		access_log off;
  	}
	
	location ~* \.(txt|log)$ {
    		deny all;
  	}

	location / {
		# First attempt to serve request as file, then
		# as directory, then fall back to displaying a 404.
		try_files $uri $uri/ /index.html;
		# Uncomment to enable naxsi on this location
		# include /etc/nginx/naxsi.rules
	}

	#error_page 404 /404.html;

	# redirect server error pages to the static page /50x.html
	#
	error_page 500 502 503 504 /50x.html;
	location = /50x.html {
		root /usr/share/nginx/www;
	}

	location ~ \.php$ {
		fastcgi_split_path_info ^(.+\.php)(/.+)$;
		# With php5-fpm:
		fastcgi_pass unix:/var/run/php5-fpm.sock;
		fastcgi_index index.php;
		include fastcgi_params;
	}
	#max Browser Cache for statics files
	location ~* \.(jpg|jpeg|gif|png|css|js|ico|xml)$ {
    		#access_log        off;
    		#log_not_found     off;
    		expires           360d;
	}
	# Prevent (deny) Access to Hidden Files with Nginx
	location ~ /\. {
    		access_log off;
    		log_not_found off; 
    		deny all;
	}
}

