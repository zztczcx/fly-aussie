# Use the base image
FROM v2fly/v2fly-core

# Copy the V2Ray configuration file into the container
COPY vmess-server.json /etc/v2ray/config.json
COPY xray.crt /etc/v2ray/xray.crt
COPY xray.key /etc/v2ray/xray.key

EXPOSE 8080
EXPOSE 443
EXPOSE 80
EXPOSE 7300

# Set the new entrypoint to run the desired command
ENTRYPOINT ["/usr/bin/v2ray", "run", "-c", "/etc/v2ray/config.json"]

