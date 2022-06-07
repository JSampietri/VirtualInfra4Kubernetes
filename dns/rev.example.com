$TTL	604800
@	IN	SOA	dns.example.com. root.dns.example.com. (
			      1		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;
@	IN	NS	dns.example.com.
10	IN	PTR	dns.example.com.
11	IN	PTR	rancher.example.com.
12	IN	PTR	worker1.example.com.
13	IN	PTR	worker2.example.com.
14	IN	PTR	worker3.example.com.
