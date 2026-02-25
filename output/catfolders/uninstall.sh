#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'catf_license'
wp option delete 'catf_banner_sidebar_dismissed'
wp option delete 'catf_first_folder'
wp option delete 'catf_first_folder_notice_dismiss'
wp option delete 'catf_rest_api_key'
wp option delete 'catf_version'
wp option delete 'catf_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_folders_import'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_attachments_import'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'catf_user_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'catf_user_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'catf_user_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'catf_user_settings'"
