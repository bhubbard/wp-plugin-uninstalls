#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_monetbil_settings'
wp option delete 'MONETBIL_MERCHANT_NAME'
wp option delete 'MONETBIL_MERCHANT_EMAIL'
wp option delete 'MONETBIL_SERVICE_NAME'

