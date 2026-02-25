#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bbkmedialibrary_notification_settings'

# Clear Cron Jobs
wp cron event delete 'bbkmedialibrary_report_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bkml_attachment_file_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bkml_attachment_file_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bkml_attachment_file_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bkml_attachment_file_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
