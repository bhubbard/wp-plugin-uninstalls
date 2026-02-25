#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ifolders_dismiss_first_use_notification'
wp option delete 'ifolders_version'
wp option delete 'ifolders_db_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ifolders_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ifolders_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ifolders_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ifolders_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
