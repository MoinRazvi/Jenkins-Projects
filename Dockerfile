FROM ubuntu:latest

COPY add_script.sh /usr/local/bin/add_script.sh

RUN chmod +x /usr/local/bin/add_script.sh

CMD ["/usr/local/bin/add_script.sh"]

