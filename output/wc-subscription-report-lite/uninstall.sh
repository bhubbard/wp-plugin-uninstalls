#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_activated'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_per_page_default'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_activated_plugin_error'"
wp option delete 'woocommerce_version'
wp option delete 'woocommerce_db_version'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'woocommerce_currency_pos'
wp option delete 'woocommerce_price_decimal_sep'
wp option delete 'woocommerce_price_thousand_sep'
wp option delete 'woocommerce_currency'

