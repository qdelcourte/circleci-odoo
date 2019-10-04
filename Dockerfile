FROM odoo:12

USER root

# copy of addons so the docker is complete as it, doesn't require the mount from docker-compose
# the mount in the docker-compose should be only in dev.
COPY ./config /etc/odoo
COPY ./addons /mnt/extra-addons/my_addons
COPY ./run_test.sh /usr/local/bin/run_test.sh

RUN ["chmod", "+x", "/usr/local/bin/run_test.sh"]

EXPOSE 8069 8071 8090
USER odoo
