FROM openshift/jenkins-2-centos7
COPY entrypoint.sh /var/lib/origin/
USER root
RUN \
  yum install -y epel-release bzip2 nano gcc && \
  chmod -R 0770 /etc/pki/ca-trust/extracted && \
  chmod 0755 /var/lib/origin/entrypoint.sh && \
  chown 1001:1001 /var/lib/origin/entrypoint.sh

RUN wget https://dl.yarnpkg.com/rpm/yarn.repo -O /etc/yum.repos.d/yarn.repo
RUN yum -y install nodejs yarn
USER 1001
CMD /var/lib/origin/entrypoint.sh
