# Dockerfile for the Melange [SPICE] cryptocurrency client. Edit as needed.
# spiced goes in a subdirectory called src/, see the COPY-line below.
# Mount a host -v for the blockchain and config in the container at 
# /home/username/.spice/

FROM kpengboy/trisquel:7.0
COPY src/ /usr/local/bin/
EXPOSE 1986
EXPOSE 1987
RUN apt-get update && apt-get install -y libboost-system1.54.0 libboost-filesystem1.54.0 libboost-program-options1.54.0 libboost-thread1.54.0 libdb6.0++ libssl1.0.0 libminiupnpc8
RUN useradd -ms /bin/bash minion  
USER username
WORKDIR /home/username
CMD ["spiced"]
