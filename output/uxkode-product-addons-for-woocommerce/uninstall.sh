#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'uxkode_custom_buttons_styles'
wp option delete 'uxkode_addons_db_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_uxkode_custom_buttons_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_uxkode_custom_buttons_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_uxkode_custom_buttons_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_uxkode_custom_buttons_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_uxkode_product_addons_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_uxkode_product_addons_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_uxkode_product_addons_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_uxkode_product_addons_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_uxkode_product_addons_selected'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_uxkode_product_addons_selected'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_uxkode_product_addons_selected'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_uxkode_product_addons_selected'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_uxkode_custom_buttons_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_uxkode_custom_buttons_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_uxkode_custom_buttons_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_uxkode_custom_buttons_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_uxkode_custom_buttons'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_uxkode_custom_buttons'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_uxkode_custom_buttons'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_uxkode_custom_buttons'"
