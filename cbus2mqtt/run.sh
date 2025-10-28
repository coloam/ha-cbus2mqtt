#!/usr/bin/with-contenv bashio

# Get serial_baud from configuration with default of 9600
SERIAL_BAUD=$(bashio::config 'serial_baud' '9600')

# Set the environment variable for cmqttd
export CMQTTD_SERIAL_BAUD="${SERIAL_BAUD}"

bashio::log.info "Setting CMQTTD_SERIAL_BAUD to ${SERIAL_BAUD}"

# Run the original entrypoint
exec /entrypoint-cmqttd.sh
