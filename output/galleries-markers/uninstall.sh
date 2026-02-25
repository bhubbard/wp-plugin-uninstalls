#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gallery_markers_setting_option_name'
wp option delete 'galleries-markers-demo'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'glm_params'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'glm_params'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'glm_params'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'glm_params'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'slides'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'slides'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'slides'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'slides'"
