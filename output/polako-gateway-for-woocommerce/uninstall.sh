#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_polako_settings'
wp option delete 'woocommerce_tax_based_on'

# Delete Transients
wp transient delete 'wc-gateway-polako-admin-notice-transient'

