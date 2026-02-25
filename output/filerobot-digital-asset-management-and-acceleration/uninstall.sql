-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('filerobot_token', 'filerobot_sec_id', 'filerobot_endpoint', 'filerobot_container', 'filerobot_sync_post_id_to_metadata', 'filerobot_sync_post_id', 'filerobot_cname', 'filerobot_cloud_storage_only', 'filerobot_use_fmaw_only', 'filerobot_sync_comments', 'filerobot_sync_metadata', 'filerobot_sync_multiple_metadata_to_db', 'filerobot_metadata_fields', 'filerobot_name_the_metadata_list', 'filerobot_change_value_wp_attached_file_to_cdn_link', 'filerobot_sync_metadata_by_custom_meta_key', 'filerobot_metadata_by_custom_meta_key');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE '%_crop';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attached_file', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attached_file', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attached_file', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attached_file', '_wp_attachment_image_alt');

