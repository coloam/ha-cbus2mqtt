FROM mtsamsonite/cbus2mqtt-$BUILD_ARCH


# Copy our custom run script
COPY run.sh /run.sh
RUN chmod +x /run.sh

# Run our custom script instead
CMD ["/run.sh"]
