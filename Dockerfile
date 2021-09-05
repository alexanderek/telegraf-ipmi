FROM telegraf:1.19.3

LABEL maintainer="Alexander Kiselev <a@kslv.me>"

RUN apt-get update && \
    apt-get install -yq \
    ipmitool && \
    # Cleanup
    apt-get clean && \
    rm -rf \
    /tmp/* \
    /var/lib/apt/lists/* \
    /var/tmp/*

# CMD ["telegraf"]
