-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'fm_key', 'wp_file_manager_settings', 'mk_fm_close_fm_help_c_fm', 'wp_fm_lang', 'wp_fm_theme');
DELETE FROM wp_options WHERE option_name LIKE 'filemanager_email_verified_%';
DELETE FROM wp_options WHERE option_name LIKE 'filemanager_email_address_%';
DELETE FROM wp_options WHERE option_name LIKE 'verify_filemanager_fname_%';
DELETE FROM wp_options WHERE option_name LIKE 'verify_filemanager_lname_%';
DELETE FROM wp_options WHERE option_name LIKE 'filemanager_cancel_lk_popup_%';

