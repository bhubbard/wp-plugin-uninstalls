-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('happierleads_settings_script_val', 'happierleads_script_val');

