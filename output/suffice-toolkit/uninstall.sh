#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'suffice_toolkit_admin_notices'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'suffice_toolkit_admin_notice_%'"
wp option delete 'suffice_toolkit_db_version'
wp option delete 'suffice_toolkit_permalinks'
wp option delete 'suffice_toolkit_admin_footer_text_rated'
wp option delete 'suffice_toolkit_version'
wp option delete 'suffice_toolkit_custom_sidebars'

# Delete Transients
wp transient delete 'st_installing'
wp transient delete '_suffice_activation_redirect'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'layout_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'layout_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'layout_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'layout_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'layout_desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'layout_desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'layout_desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'layout_desc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_example_cb'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_example_cb'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_example_cb'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_example_cb'"
