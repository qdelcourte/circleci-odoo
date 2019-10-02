FROM odoo:12

USER root

# copy of addons so the docker is complete as it, doesn't require the mount from docker-compose
# the mount in the docker-compose should be only in dev.
COPY ./config /etc/odoo
COPY ./addons /mnt/extra-addons/my_addons
COPY ./run_test.sh /usr/local/bin/run_test.sh

RUN ["chmod", "+x", "/usr/local/bin/run_test.sh"]

# thrid party addons
#ENV THIRD_PARTY_ADDONS /usr/lib/python3/dist-packages/odoo/addons
#RUN install_third_party_addons.sh https://github.com/OCA/server-tools.git ${ODOO_VERSION} ${THIRD_PARTY_ADDONS}

EXPOSE 8069 8071 8090
USER odoo
