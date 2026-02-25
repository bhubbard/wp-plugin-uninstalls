#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_cdl_checkout_settings'
wp option delete 'woocommerce_my_custom_gateway_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"

