#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_plugin_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_meta'"
wp option delete 'crm_perks_upload_folder'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_msgs'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_upload_folder'"
wp option delete 'cfx_form_install_entries_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_install_data'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_form'"
