FROM debian

COPY . /

RUN chmod u+x run.sh

RUN chmod u+x wait.sh

CMD ["./run.sh"]