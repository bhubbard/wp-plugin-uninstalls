-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ms_files_rewriting', 'aws_settings', 'active_sitewide_plugins', 'as3cf_regions_cache', 'as3cf_attachment_counts', 'as3cf_db_init_status', 'as3cf_deactivated_notice_id', 'as3cf_notices');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE '%_schema_version';
DELETE FROM wp_options WHERE option_name LIKE '%_session';
DELETE FROM wp_options WHERE option_name LIKE 'as3cf_constant_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_metadata', 'as3cf_notices', 'as3cf_dismissed_notices', '_wp_attachment_backup_sizes', 'as3cf_acf_cropped_to_remove', '_wp_attached_file', 'as3cf_filesize_total', 'amazonS3_info', 'edd_download_files', 'wpos3_filesize_total');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_metadata', 'as3cf_notices', 'as3cf_dismissed_notices', '_wp_attachment_backup_sizes', 'as3cf_acf_cropped_to_remove', '_wp_attached_file', 'as3cf_filesize_total', 'amazonS3_info', 'edd_download_files', 'wpos3_filesize_total');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_metadata', 'as3cf_notices', 'as3cf_dismissed_notices', '_wp_attachment_backup_sizes', 'as3cf_acf_cropped_to_remove', '_wp_attached_file', 'as3cf_filesize_total', 'amazonS3_info', 'edd_download_files', 'wpos3_filesize_total');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_metadata', 'as3cf_notices', 'as3cf_dismissed_notices', '_wp_attachment_backup_sizes', 'as3cf_acf_cropped_to_remove', '_wp_attached_file', 'as3cf_filesize_total', 'amazonS3_info', 'edd_download_files', 'wpos3_filesize_total');

