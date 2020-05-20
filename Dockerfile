FROM ubuntu:focal

COPY init /init
COPY container-build /tmp/
RUN /tmp/container-build && rm -f /tmp/container-build
COPY printers.conf /etc/cups/printers.conf
COPY HL-3170CDW.ppd /etc/cups/ppd/HL-3170CDW.ppd
COPY CMYK_Line_Test_US_Letter.pdf /usr/local/share/CMYK_Line_Test_US_Letter.pdf

USER root
CMD ["/init"]
