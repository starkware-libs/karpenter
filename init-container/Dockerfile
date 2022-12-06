FROM public.ecr.aws/aws-cli/aws-cli

RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"; chmod +x kubectl; cp kubectl /usr/bin

COPY main.sh .

RUN chmod +x main.sh

ENTRYPOINT ["/bin/sh", "-c"]

CMD ["./main.sh"]
