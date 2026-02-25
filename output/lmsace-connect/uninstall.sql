-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lac_import_settings', 'lac_general_settings', 'lac_connection_settings', 'lac_sso_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('lac_moodle_category_id', 'first_name', 'last_name', 'moodle_user_id', 'lac_enrolments');
DELETE FROM wp_usermeta WHERE meta_key IN ('lac_moodle_category_id', 'first_name', 'last_name', 'moodle_user_id', 'lac_enrolments');
DELETE FROM wp_termmeta WHERE meta_key IN ('lac_moodle_category_id', 'first_name', 'last_name', 'moodle_user_id', 'lac_enrolments');
DELETE FROM wp_commentmeta WHERE meta_key IN ('lac_moodle_category_id', 'first_name', 'last_name', 'moodle_user_id', 'lac_enrolments');

