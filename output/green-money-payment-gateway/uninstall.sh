#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gmpg_settings'
wp option delete 'woocommerce_force_ssl_checkout'

# Delete Transients
wp transient delete 'checkout_temp_data'

