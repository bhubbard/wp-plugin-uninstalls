-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wmufs_settings', 'wmufs_maximum_execution_time', 'wmufs_memory_limit', 'wmufs_notice_disable_time', 'max_file_size', 'wmufs_settings_updated', 'codepopular_promo_data', 'codepopular_blog_posts');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';
DELETE FROM wp_options WHERE option_name LIKE 'wf-plugin-info-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_is_custom_background', '_wp_attachment_is_custom_header');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_is_custom_background', '_wp_attachment_is_custom_header');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_is_custom_background', '_wp_attachment_is_custom_header');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_is_custom_background', '_wp_attachment_is_custom_header');

