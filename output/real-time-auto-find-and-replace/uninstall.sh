#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rtafar_plugin_install_date'
wp option delete 'rtafar_db_version'
wp option delete 'rtafar_plugin_version'
wp option delete 'rtafar_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%ed_Activated'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%ed_Feedback'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%ed_Feedback_offPerm'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
