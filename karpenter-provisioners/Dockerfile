FROM portainer/kubectl-shell

USER 0

COPY main.sh .

RUN chmod +x main.sh

ENTRYPOINT ["/bin/sh", "-c"]

CMD ["./main.sh"]
