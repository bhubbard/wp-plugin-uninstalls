#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'fdv_wc_keep_manually_set_defaults_variable'
wp option delete 'fdv_wc_sort_variable'
wp option delete 'fdv_wc_sort_then_variable'
wp option delete 'woocommerce_hide_out_of_stock_items'
wp option delete 'fdv_wc_grey_out_variations_when_out_of_stock'
wp option delete 'fdv_wc_hide_variations_when_out_of_stock'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
