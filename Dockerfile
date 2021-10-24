FROM eclipse-mosquitto:2.0.12

COPY mosquitto.conf mosquitto.acl /mosquitto/config/
