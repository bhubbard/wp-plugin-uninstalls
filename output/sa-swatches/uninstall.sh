#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sasw_db_version'
wp option delete 'sasw_swatches_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sasw_custom_swatches'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sasw_custom_swatches'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sasw_custom_swatches'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sasw_custom_swatches'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sasw_attr_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sasw_attr_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sasw_attr_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sasw_attr_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sasw_swatch'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sasw_swatch'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sasw_swatch'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sasw_swatch'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sasw_attr_options_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sasw_attr_options_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sasw_attr_options_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sasw_attr_options_order'"
