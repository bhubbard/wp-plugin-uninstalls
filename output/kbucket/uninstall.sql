-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kb_auto_upload', 'kb_auto_upload_stage', 'kb_auto_upload_logs', 'kb_auto_upload_file', 'kb_auto_images', 'kb_auto_images_all', 'kb_auto_upload_image_hold', 'kb_setup_page_id', 'kb_widget_data', 'kb_settings', 'kbucket_data');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('article_url', '_url_kbucket', '_id_kbucket', '_thumbnail_id', 'wp_attachment_orig_url', 'wp_attachment_size', 'wp_attachment_url', 'kb_custom_photo');
DELETE FROM wp_usermeta WHERE meta_key IN ('article_url', '_url_kbucket', '_id_kbucket', '_thumbnail_id', 'wp_attachment_orig_url', 'wp_attachment_size', 'wp_attachment_url', 'kb_custom_photo');
DELETE FROM wp_termmeta WHERE meta_key IN ('article_url', '_url_kbucket', '_id_kbucket', '_thumbnail_id', 'wp_attachment_orig_url', 'wp_attachment_size', 'wp_attachment_url', 'kb_custom_photo');
DELETE FROM wp_commentmeta WHERE meta_key IN ('article_url', '_url_kbucket', '_id_kbucket', '_thumbnail_id', 'wp_attachment_orig_url', 'wp_attachment_size', 'wp_attachment_url', 'kb_custom_photo');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'kb_custom_photo_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'kb_custom_photo_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'kb_custom_photo_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'kb_custom_photo_%';

