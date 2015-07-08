FROM jboss/wildfly:9.0.0.Final
MAINTAINER nonymus@nonymus.de
VOLUME /opt/jboss/wildfly/standalone/deployments
ADD standalone-ha.xml /opt/jboss/wildfly/standalone/configuration/
ADD cluster-demo.war /opt/jboss/wildfly/standalone/deployments/
ADD cluster-demo.war.dodeploy /opt/jboss/wildfly/standalone/deployments/
CMD /opt/jboss/wildfly/bin/standalone.sh -c=standalone-ha.xml 
EXPOSE 8080 9990
