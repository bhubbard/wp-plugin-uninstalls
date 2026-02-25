#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_notify_low_stock_amount'
wp option delete 'woocommerce_notify_no_stock_amount'
wp option delete 'niwoovd_setting'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_variation_option_custom_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_variation_option_custom_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_variation_option_custom_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_variation_option_custom_text'"
