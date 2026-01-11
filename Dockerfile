FROM sagemath/sagemath:latest AS runner

USER root
RUN ln -sf /usr/share/zoneinfo/Europe/Warsaw /etc/localtime
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y pandoc texlive-xetex

USER sage

ENTRYPOINT [ "/usr/local/bin/sage-entrypoint" ]
CMD [ "sage-jupyter" ]