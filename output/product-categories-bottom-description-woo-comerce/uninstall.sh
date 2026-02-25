#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pcbdw_max_width_value'
wp option delete 'pcbdw_max_width_unit'
wp option delete 'pcbdw_background_color'
wp option delete 'pcbdw_border_width'
wp option delete 'pcbdw_border_color'
wp option delete 'pcbdw_border_radius_value'
wp option delete 'pcbdw_border_radius_unit'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_value'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_unit'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_bottom_description_display_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_bottom_description_display_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_bottom_description_display_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_bottom_description_display_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'details'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'details'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'details'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'details'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_bottom_description_display_option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_bottom_description_display_option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_bottom_description_display_option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_bottom_description_display_option'"
