#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wfm_settings_tab_custom_out_of_stock_selection_value'
wp option delete 'wfm_settings_tab_custom_add-to-cart'
wp option delete 'wfm_settings_tab_custom_checkout'
wp option delete 'wfm_settings_tab_custom_place-order'
wp option delete 'wfm_settings_tab_custom_add_sku'
wp option delete 'wfm_settings_tab_custom_out_of_stock'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
