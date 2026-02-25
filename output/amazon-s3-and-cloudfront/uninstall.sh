#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ms_files_rewriting'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp option delete 'aws_settings'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_schema_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_session'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'as3cf_constant_%'"

# Delete Transients
wp transient delete 'as3cf_regions_cache'
wp transient delete 'as3cf_attachment_counts'
wp transient delete 'as3cf_db_init_status'
wp transient delete 'as3cf_deactivated_notice_id'
wp transient delete 'as3cf_notices'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'as3cf_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'as3cf_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'as3cf_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'as3cf_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'as3cf_dismissed_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'as3cf_dismissed_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'as3cf_dismissed_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'as3cf_dismissed_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'as3cf_acf_cropped_to_remove'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'as3cf_acf_cropped_to_remove'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'as3cf_acf_cropped_to_remove'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'as3cf_acf_cropped_to_remove'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'as3cf_filesize_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'as3cf_filesize_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'as3cf_filesize_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'as3cf_filesize_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'amazonS3_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'amazonS3_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'amazonS3_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'amazonS3_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'edd_download_files'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'edd_download_files'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'edd_download_files'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'edd_download_files'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpos3_filesize_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpos3_filesize_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpos3_filesize_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpos3_filesize_total'"
