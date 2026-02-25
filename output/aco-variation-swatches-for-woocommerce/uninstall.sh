#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'acovsw_common_settings'
wp option delete 'acovsw_label_settings'
wp option delete 'acovsw_radio_settings'
wp option delete 'acovsw_color_settings'
wp option delete 'acovsw_image_settings'
wp option delete 'acovsw_tooltip_settings'
wp option delete 'acovsw_advanced_settings'
wp option delete 'acovsw_attribute_values'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp option delete 'active_sitewide_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'acovsw_custom_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'acovsw_custom_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'acovsw_custom_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'acovsw_custom_settings'"
