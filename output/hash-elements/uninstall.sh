#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hash_elements_first_activation'
wp option delete 'hash_elements_dismissed_notices'
wp option delete 'element_pack_active_modules'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hash_elements_dismissed_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hash_elements_dismissed_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hash_elements_dismissed_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hash_elements_dismissed_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'panels_data'"
