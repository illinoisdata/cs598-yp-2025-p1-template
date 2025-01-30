####################################################################################
# DO NOT MODIFY THE BELOW ##########################################################

FROM openjdk:11

RUN apt update && \
    apt upgrade --yes && \
    apt install ssh openssh-server --yes

# Setup common SSH key.
RUN ssh-keygen -t rsa -P '' -f ~/.ssh/shared_rsa -C common && \
    cat ~/.ssh/shared_rsa.pub >> ~/.ssh/authorized_keys && \
    chmod 0600 ~/.ssh/authorized_keys

RUN apt-get install net-tools

# DO NOT MODIFY THE ABOVE ##########################################################
####################################################################################

# Setup HDFS/Presto resources here


