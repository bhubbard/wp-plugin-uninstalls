#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ic_woocat'
wp option delete 'IC_WOOCAT_activation_message_done'
wp option delete 'ic_cat_recommended_extensions'
wp option delete 'ic_hidden_notices'
wp option delete 'implecode_wp_tooltips'
wp option delete 'implecode_wp_hidden_tooltips'
wp option delete 'IC_EPC_activation_message'
wp option delete 'IC_EPC_activation_message_done'
wp option delete 'ic_cat_wizard_woo_choice'
wp option delete 'ic_enable_page_for_woo'
wp option delete 'ic_enable_listing_for_woo'
wp option delete 'product_archive_page_id'
wp option delete 'product_archive'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'ic_woocat_woo_gallery'

# Delete Transients
wp transient delete 'implecode_extensions_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ic_woocat_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ic_woocat_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ic_woocat_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ic_woocat_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
