FROM java:8

ADD bin /opt/iri/bin
ADD conf /opt/iri/conf
ADD data /opt/iri/data
WORKDIR /opt/iri/data

EXPOSE 14256

ENTRYPOINT java -jar ../bin/iri-1.1.2.6.jar -p 14265 -n "$NEIGHBORS" -d -r 14265 -c 0.0.0.0/0 --remote --remote-limit-api "attachToTangle, addNeighbors, removeNeighbors"