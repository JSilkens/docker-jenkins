FROM openshift/jenkins-2-centos7

USER root

ADD entrypoint.sh /
RUN \
  chmod -R 0770 /etc/pki/ca-trust/extracted && \
  chmod 0755 /entrypoint.sh

USER 1001
CMD [ '/entrypoint.sh' ]
