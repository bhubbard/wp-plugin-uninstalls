#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pisol_bogo_redirect'
wp option delete 'pisol_bogo_category_rules'
wp option delete 'pisol_free_product'
wp option delete 'pisol_global_disable'
wp option delete 'pisol_product_quantity'
wp option delete 'pisol_free_product_quantity'
wp option delete 'pisol_global_same_product_msg'
wp option delete 'pisol_global_diff_product_msg'
wp option delete 'pisol_bogo_message_bg_color'
wp option delete 'pisol_bogo_message_text_color'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pisol_enable_bogo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pisol_enable_bogo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pisol_enable_bogo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pisol_enable_bogo'"
