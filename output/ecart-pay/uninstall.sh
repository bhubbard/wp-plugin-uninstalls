#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_ecartpay_settings'

# Delete Transients
wp transient delete 'ecartpay_token'

