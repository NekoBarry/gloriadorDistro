FROM archlinux:latest

ADD / ~/gloriadordistro
WORKDIR ~/gloriadordistro

RUN chmod -x install.sh
CMD [ "install.sh" ]