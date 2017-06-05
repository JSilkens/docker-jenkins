FROM openshift/jenkins-2-centos7

ADD entrypoint.sh /
RUN \
  chmod -R 0770 /etc/pki/ca-trust/extracted && \
  chmod 0755 /entrypoint.sh

CMD [ '/entrypoint.sh' ]
