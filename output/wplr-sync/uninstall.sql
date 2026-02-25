-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wplr_media_library', 'wplr_media_modals', 'wplr_public_api', 'wplr_hide_extensions', 'wplr_debugging_enabled', 'wplr_library_show_hierarchy', 'wplr_debuglogs', 'wplr_catch_errors', 'wplr_check_same_file', 'meowapps_hide_ads', 'wplr_enable_keywords', 'wplr_sync_keywords', 'wr2x_big_image_size_threshold', 'wplr_plugins', 'wplr_use_taken_date', 'wplr_filename_accents', 'wplr_upload_folder', 'nfw_options', 'wplr_media_organizer', 'force_sslverify', 'meowapps_hide_meowapps', 'litespeed.conf.cache-rest', 'mwai_options', 'meowapps_news', 'wplr_auth_token');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE '%_crop';
DELETE FROM wp_options WHERE option_name LIKE '%_license';
DELETE FROM wp_options WHERE option_name LIKE '%_pro_serial';
DELETE FROM wp_options WHERE option_name LIKE '%_rating_date';
DELETE FROM wp_options WHERE option_name LIKE 'wplr-media-size-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wplr_auth_token', '_wp_attachment_image_alt', '_media_version', '_wp_attached_file');
DELETE FROM wp_usermeta WHERE meta_key IN ('wplr_auth_token', '_wp_attachment_image_alt', '_media_version', '_wp_attached_file');
DELETE FROM wp_termmeta WHERE meta_key IN ('wplr_auth_token', '_wp_attachment_image_alt', '_media_version', '_wp_attached_file');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wplr_auth_token', '_wp_attachment_image_alt', '_media_version', '_wp_attached_file');

