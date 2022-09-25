FROM ghcr.io/stephenzwj/multilyx2pdf-action:latest
COPY LICENSE /LICENSE
COPY README.md /README.md
# Copies your code file from your action repository to the filesystem path `/` of the container
COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh
RUN git config --global --add safe.directory /github/workspace
# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
