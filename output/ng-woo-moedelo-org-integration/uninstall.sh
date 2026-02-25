#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_calc_taxes'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'woocommerce_price_num_decimals'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%bill'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%bill'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%bill'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%bill'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%inn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%inn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%inn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%inn'"
