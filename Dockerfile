FROM openshift/jenkins-2-centos7

USER root

RUN chmod -R 0770 /etc/pki/ca-trust/extracted

USER 1001
