-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('default_post_edit_rows', 'rockpress_import', 'rockpress_last_import', 'rockpress_import_in_progress', 'rockpress_licenses', 'rockpress_rock', 'rockpress_settings', 'rockpress_current_import', 'rockpress_license_data', 'rockpress-addons', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_active';
DELETE FROM wp_options WHERE option_name LIKE '%_license_key_active';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

