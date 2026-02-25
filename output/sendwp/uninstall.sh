#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sendwp_client_secret'
wp option delete 'sendwp_client_connected'
wp option delete 'sendwp_forwarding_enabled'
wp option delete '_transient_timeout_sendwp_pulse_monitor'
wp option delete '_transient_sendwp_pulse_monitor'

# Delete Transients
wp transient delete 'sendwp_pulse_monitor'

# Clear Cron Jobs
wp cron event delete 'sendwp_heartbeat'

