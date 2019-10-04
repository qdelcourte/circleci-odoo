FROM odoo:12
USER root

# Configuration
COPY ./config /etc/odoo

# Customs Addons
COPY ./addons /mnt/extra-addons/my_addons
# Extra addons
COPY ./extra-addons /mnt/extra-addons

COPY ./run_test.sh /usr/local/bin/run_test.sh
RUN ["chmod", "+x", "/usr/local/bin/run_test.sh"]

RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/vishnubob/wait-for-it.git

EXPOSE 8069 8071 8090
USER odoo
