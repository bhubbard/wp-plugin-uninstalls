-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('disclaimer', 'button_color', 'splash_save_to_local', 'activatation_status', 'splash_script_settings', 'splash_hubspot_settings', 'splash_hubspot_feed', 'splash_setting_fxn', 'jal_db_version', 'wpfm-settings');
DELETE FROM wp_options WHERE option_name LIKE '%_flush';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gate_form_textarea', 'gate_form_input');
DELETE FROM wp_usermeta WHERE meta_key IN ('gate_form_textarea', 'gate_form_input');
DELETE FROM wp_termmeta WHERE meta_key IN ('gate_form_textarea', 'gate_form_input');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gate_form_textarea', 'gate_form_input');

