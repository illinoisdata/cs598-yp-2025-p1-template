####################################################################################
# DO NOT MODIFY THE BELOW ##########################################################

FROM cs598p1-common

# DO NOT MODIFY THE ABOVE ##########################################################
####################################################################################

COPY ./setup-main.sh ./setup-main.sh
RUN /bin/bash setup-main.sh

COPY ./start-main.sh ./start-main.sh
CMD ["/bin/bash", "start-main.sh"]