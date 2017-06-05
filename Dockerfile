FROM openshift/jenkins-2-centos7

USER root

RUN chown -R 1001 /etc/pki/ca-trust/extracted

USER 1001
