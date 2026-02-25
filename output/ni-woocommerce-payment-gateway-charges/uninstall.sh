#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_notify_low_stock_amount'
wp option delete 'woocommerce_notify_no_stock_amount'
wp option delete 'ni-payment-gateway-charges-option'
wp option delete 'woocommerce_currency'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"

