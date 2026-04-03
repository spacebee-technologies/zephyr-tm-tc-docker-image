FROM ghcr.io/spacebee-technologies/zephyr-environment:v0.13.0

USER root
RUN /opt/venv/bin/pip install tm-tc-code-generator==0.10.1
USER builder
