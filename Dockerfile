FROM opensciencegrid/software-base:fresh
LABEL maintainer OSG Software <help@opensciencegrid.org>

RUN yum -y install glideinwms-userschedd && \
    yum -y install emacs && \
    yum -y install git

ADD config.d/* /etc/condor/config.d/
ADD condor_mapfile /etc/condor/certs/condor_mapfile
ADD 10-condor.conf /etc/supervisord.d/
#ADD image-config.d/* /etc/osg/image-config.d/
#ADD 99-k8s-fe.config /etc/condor/config.d/99-k8s-fe.config
