FROM vimagick/tinyproxy:latest
RUN apk add --no-cache openvpn bash
EXPOSE 8888	
COPY VPN256 /VPN256
COPY ipch /bin/ipch
COPY entrypoint.sh /bin/entrypoint.sh
CMD ["entrypoint.sh"]
