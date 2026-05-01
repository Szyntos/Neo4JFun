FROM neo4j:5.19

ENV NEO4J_AUTH=neo4j/password
ENV NEO4J_server_bolt_listen__address=0.0.0.0:7687
ENV NEO4J_server_http_listen__address=0.0.0.0:7474
ENV NEO4J_dbms_security_procedures_unrestricted=apoc.*

COPY init.cypher /var/lib/neo4j/import/init.cypher

EXPOSE 7474 7687