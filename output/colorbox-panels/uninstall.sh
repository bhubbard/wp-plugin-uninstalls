#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpsm_colorbox_p_review'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsm_colorbox_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsm_colorbox_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsm_colorbox_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsm_colorbox_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsm_colorbox_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsm_colorbox_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsm_colorbox_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsm_colorbox_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Colorbox_Settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Colorbox_Settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Colorbox_Settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Colorbox_Settings'"
