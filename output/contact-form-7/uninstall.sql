-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcf7', 'disallowed_keys');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpcf7_hide_welcome_panel_on', '_config_validation', '_locale', '_hash', '_old_cf7_unit_id', '_config_errors', '_flamingo');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpcf7_hide_welcome_panel_on', '_config_validation', '_locale', '_hash', '_old_cf7_unit_id', '_config_errors', '_flamingo');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpcf7_hide_welcome_panel_on', '_config_validation', '_locale', '_hash', '_old_cf7_unit_id', '_config_errors', '_flamingo');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpcf7_hide_welcome_panel_on', '_config_validation', '_locale', '_hash', '_old_cf7_unit_id', '_config_errors', '_flamingo');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

