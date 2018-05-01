FROM ubuntu:14.04

MAINTAINER Jean-François GAZET <theboss@jeffprod.com>

LABEL version="1.0"
LABEL description="Apache 2 / PHP"

RUN apt-get -y update && apt-get install -y \
apache2 \
php5 \
libapache2-mod-php5 \
libapache2-mod-authnz-external \
php5-gd \
php5-json \
php5-sqlite \
php5-mysql \
php5-mcrypt \
mcrypt \
php-pear \
sendmail \
wget 

# INSTALL LLNG
#COPY etc.apt.sources.d.lemonldap-ng.list /

#RUN echo "# Install LemonLDAP::NG repo" \
#    && mv etc.apt.sources.d.lemonldap-ng.list /etc/apt/sources.list.d/lemonldap-ng.list \
#    && wget -O - http://lemonldap-ng.org/_media/rpm-gpg-key-ow2 | apt-key add - \

#RUN apt update \
#    && echo "# Install LemonLDAP::NG package" \
#    && apt-get install -y \
#	libapache2-mod-perl2 \
#	libapache2-mod-fcgid \
#	lemonldap-ng

#OIDC dependencies
RUN apt-get install -y \
libcurl3 \
libjansson4


RUN a2enmod ssl \
    && a2ensite default-ssl


# INSTALL OIDC MOD APACHE
#WORKDIR /tmp
RUN wget http://ftp.us.debian.org/debian/pool/main/liba/libapache2-mod-auth-openidc/libapache2-mod-auth-openidc_1.6.0-1_amd64.deb
RUN dpkg -i libapache2-mod-auth-openidc_1.6.0-1_amd64.deb
RUN a2enmod auth_openidc

# on veut une machine de dev qui affiche toutes les erreurs PHP
RUN sed -i -e 's/^error_reporting\s*=.*/error_reporting = E_ALL/' /etc/php5/apache2/php.ini
RUN sed -i -e 's/^display_errors\s*=.*/display_errors = On/' /etc/php5/apache2/php.ini

RUN cp /etc/php5/mods-available/mcrypt.ini /etc/php5/apache2/conf.d/
RUN cp /etc/php5/mods-available/mcrypt.ini /etc/php5/cli/conf.d/



# commandes à exécuter au démarrage de l'instance de l'image
# ici on démarrera Apache
CMD ["/usr/sbin/apache2ctl","-DFOREGROUND"]