#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_asprsh_custom_shipping_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_asprsh_custom_shipping_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_asprsh_custom_shipping_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_asprsh_custom_shipping_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_asprsh_shipping_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_asprsh_shipping_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_asprsh_shipping_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_asprsh_shipping_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_asprsh_custom_shipping_rate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_asprsh_custom_shipping_rate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_asprsh_custom_shipping_rate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_asprsh_custom_shipping_rate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_asprsh_weight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_asprsh_weight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_asprsh_weight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_asprsh_weight'"
