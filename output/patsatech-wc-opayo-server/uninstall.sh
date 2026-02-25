#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_force_ssl_checkout'

# Delete Transients
wp transient delete 'opayo_server_next_url'

