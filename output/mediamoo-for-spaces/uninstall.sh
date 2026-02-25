#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mediamoo_dos_key'
wp option delete 'mediamoo_dos_secret'
wp option delete 'mediamoo_dos_endpoint'
wp option delete 'mediamoo_dos_container'
wp option delete 'mediamoo_dos_storage_path'
wp option delete 'mediamoo_dos_cdn_url'
wp option delete 'mediamoo_dos_storage_file_only'
wp option delete 'mediamoo_dos_storage_file_delete'
wp option delete 'mediamoo_dos_filter'
wp option delete 'mediamoo_dos_original_upload_url_path'
wp option delete 'mediamoo_dos_original_upload_path'

# Clear Cron Jobs
wp cron event delete 'mediamoo_dos_sync_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
