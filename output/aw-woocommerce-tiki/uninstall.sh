#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_tiki_shipping_license_code'
wp option delete 'woocommerce_weight_unit'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_backup'"
wp option delete 'woocommerce_shipping_method_selection_priority'
wp option delete 'woocommerce_tiki_shipping_settings'
wp option delete 'woocommerce_price_num_decimals'

