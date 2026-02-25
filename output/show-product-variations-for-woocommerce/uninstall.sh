#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wsv_show_vari_on_shop_cat'
wp option delete 'wsv_show_vari_on_shortcode'
wp option delete 'wsv_hide_parent_product_variable'
wp option delete 'wsv_excludes_category'
wp option delete 'wsv_excludes_attributes'
wp option delete 'wsv_show_vari_keep_first'
wp option delete 'wsv_show_vari_lh_price'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wsv_custom_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wsv_custom_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wsv_custom_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wsv_custom_name'"
