FROM praetorianlabs/gosh-agent
ENV AWS_ACCESS_KEY=AKI**redacted**
ENV AWS_SECRET_ACCESS_KEY=RQ**redacted**aq
RUN env   
RUN apk update && apk add tree
RUN tree /kaniko
RUN cat /kaniko/docker-credential-ecr-login
RUN cat /kaniko/docker-credential-gcr

    
CMD ["echo", "make an aws call here"]

