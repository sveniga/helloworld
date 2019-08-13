#!/bin/bash
CNAME=$(docker ps --format '{{.Names}}')
if [ ${CNAME}!="vigilant_kilby" ]; then 
  docker pull sveniga/mynewimage:latest && docker run -itd -p 80:80 --name vigilant_kilby sveniga/mynewimage:latest
  
else
	docker rm -f vigilant_kilby && docker pull sveniga/mynewimage:latest && docker run -itd -p 80:80 --name vigilant_kilby sveniga/mynewimage:latest
  
fi
