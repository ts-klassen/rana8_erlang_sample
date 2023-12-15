FROM ubuntu
COPY rana8_erlang_sample /var/rana8_erlang_sample
CMD ["/var/rana8_erlang_sample/bin/rana8_erlang_sample", "foreground"]
