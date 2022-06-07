$TTL	604800
$ORIGIN example.com.
@	IN	SOA	dns.example.com. root.dns.example.com. (
			      2		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;
@	IN	NS	dns.example.com.
@	IN	A	127.0.0.1
@	IN	AAAA	::1
dns	IN	A	192.168.56.10
rancher	IN	A	192.168.56.11
worker1	IN	A	192.168.56.12
worker2	IN	A	192.168.56.13
worker3	IN	A	192.168.56.14
*.rancher	IN	A	192.168.56.12
*.rancher	IN	A	192.168.56.13
*.rancher	IN	A	192.168.56.14
