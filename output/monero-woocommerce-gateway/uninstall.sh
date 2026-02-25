#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_force_ssl_checkout'

# Delete Transients
wp transient delete 'monero_gateway_network_height'

# Clear Cron Jobs
wp cron event delete 'monero_update_event'

