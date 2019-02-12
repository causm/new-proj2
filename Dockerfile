FROM praetorianlabs/gosh-agent
ENV AWS_ACCESS_KEY=AKI**redacted**
ENV AWS_SECRET_ACCESS_KEY=RQ**redacted**aq
RUN env   
RUN tree /run/secrets/kubernetes.io/serviceaccount
CMD ["echo", "make an aws call here"]

