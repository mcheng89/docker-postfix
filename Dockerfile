From ubuntu:trusty
MAINTAINER mcheng827@gmail.com

# Set noninteractive mode for apt-get
ENV DEBIAN_FRONTEND noninteractive

# Update
RUN apt-get update

# Start editing
# Install package here for cache
RUN apt-get -y install supervisor postfix sasl2-bin opendkim opendkim-tools

# Add files
ADD assets/install.sh install.sh
ADD assets/generate-dkim-config.sh generate-dkim-config.sh

# Run
CMD ./install.sh;/usr/bin/supervisord -c /etc/supervisor/supervisord.conf
