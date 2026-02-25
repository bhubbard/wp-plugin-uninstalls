#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'efbtw_bundles_save_id'
wp option delete 'efbtw_global_settings'
wp option delete 'woocommerce_currency_pos'
wp option delete 'efbtw_product_per_page'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'efbtw_bundle_item_group'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'efbtw_bundle_item_group'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'efbtw_bundle_item_group'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'efbtw_bundle_item_group'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'efbtw_primary_discount_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'efbtw_primary_discount_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'efbtw_primary_discount_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'efbtw_primary_discount_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'efbtw_bundle_primary_item_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'efbtw_bundle_primary_item_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'efbtw_bundle_primary_item_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'efbtw_bundle_primary_item_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_efbtw_allow_customization'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_efbtw_allow_customization'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_efbtw_allow_customization'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_efbtw_allow_customization'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_efbtw_hide_outof_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_efbtw_hide_outof_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_efbtw_hide_outof_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_efbtw_hide_outof_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_efbtw_fbtcheckboxstate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_efbtw_fbtcheckboxstate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_efbtw_fbtcheckboxstate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_efbtw_fbtcheckboxstate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_efbtw_select_bundle_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_efbtw_select_bundle_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_efbtw_select_bundle_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_efbtw_select_bundle_product'"
