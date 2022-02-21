FROM eclipse-mosquitto:2.0.14

COPY mosquitto.conf mosquitto.acl /mosquitto/config/
