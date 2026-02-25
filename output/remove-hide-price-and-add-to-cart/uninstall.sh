#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_appihw_hide_add_to_cart_button'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_appihw_hide_add_to_cart_button'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_appihw_hide_add_to_cart_button'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_appihw_hide_add_to_cart_button'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_appihw_hide_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_appihw_hide_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_appihw_hide_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_appihw_hide_price'"
