#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'spacious_toolkit_admin_notices'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'spacious_toolkit_admin_notice_%'"
wp option delete 'spacious_toolkit_db_version'
wp option delete 'spacious_toolkit_admin_footer_text_rated'
wp option delete 'spacious_toolkit_version'

# Delete Transients
wp transient delete 'spt_installing'
wp transient delete '_spacious_activation_redirect'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
