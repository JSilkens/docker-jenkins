FROM openshift/jenkins-2-centos7

ADD entrypoint.sh /
USER root
RUN \
  yum install -y epel-release bzip2 jq git && \
  chmod -R 0770 /etc/pki/ca-trust/extracted && \
  chmod 0755 /entrypoint.sh
USER 1001

CMD /entrypoint.sh
