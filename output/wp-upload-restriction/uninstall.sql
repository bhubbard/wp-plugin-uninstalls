-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpur_selected_mimes', 'wpur_db_version', 'wpur_custom_types');
DELETE FROM wp_options WHERE option_name LIKE 'wpur_selected_mimes_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpur_max_upload_unit_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpur_max_upload_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpur_max_upload_restrict%';

