#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'informigados_duplicate_all_options'

# Delete Transients
wp transient delete 'settings_errors'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'informigados_duplicate_all_debug_log'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'informigados_duplicate_all_debug_log'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'informigados_duplicate_all_debug_log'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'informigados_duplicate_all_debug_log'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'informigados_duplicate_all_admin_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'informigados_duplicate_all_admin_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'informigados_duplicate_all_admin_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'informigados_duplicate_all_admin_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_version'"
