#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cloudinary_settings_cache'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp option delete 'cloudinary_global_transformations'
wp option delete 'cloudinary_media_display'
wp option delete '_cld_cli_analyzed'

# Delete Transients
wp transient delete '_cld_disable_http_upload'
wp transient delete '_autosync_check'

# Clear Cron Jobs
wp cron event delete 'cloudinary_cleanup_event'
wp cron event delete 'cloudinary_status'
wp cron event delete 'cloudinary_resume_queue'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpml_cld'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpml_cld'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpml_cld'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpml_cld'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_terms'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_terms'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_terms'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_terms'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cld_unsynced'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cld_unsynced'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cld_unsynced'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cld_unsynced'"
