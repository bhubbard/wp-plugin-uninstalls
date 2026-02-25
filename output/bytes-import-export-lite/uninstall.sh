#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'biel_bytes_import_export_posts_fields'
wp option delete 'biel_bytes_import_export_posts_status'
wp option delete 'biel_bytes_posts_import_export_option'

# Clear Cron Jobs
wp cron event delete 'importer_scheduled_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
