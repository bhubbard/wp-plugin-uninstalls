#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_payfast_settings'
wp option delete 'woocommerce_payfast_invalid_credentials'

# Delete Transients
wp transient delete 'wc-gateway-payfast-admin-notice-transient'

