#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fskit_txt_color'
wp option delete 'fskit_bg_color'
wp option delete 'fskit_hide_tablerate_shipping'
wp option delete 'fskit_show_custom_label'
wp option delete 'fskit_freeshipping_label'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_free_shipping_badge'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_free_shipping_badge'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_free_shipping_badge'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_free_shipping_badge'"
