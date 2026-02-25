-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('catf_license', 'catf_banner_sidebar_dismissed', 'catf_first_folder', 'catf_first_folder_notice_dismiss', 'catf_rest_api_key', 'catf_version', 'catf_settings');
DELETE FROM wp_options WHERE option_name LIKE '%_folders_import';
DELETE FROM wp_options WHERE option_name LIKE '%_attachments_import';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'catf_user_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', 'catf_user_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'catf_user_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'catf_user_settings');

