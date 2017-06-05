FROM openshift/jenkins-2-centos7

USER root

RUN chmod -R 0770 /etc/pki/ca-trust/extracted
ADD entrypoint.sh /

USER 1001
CMD [ '/entrypoint.sh' ]
