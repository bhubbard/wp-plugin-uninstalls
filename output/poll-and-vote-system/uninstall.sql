-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pvs_settings_data', 'pvs_listening_settings', 'pvs_customize_settings');

