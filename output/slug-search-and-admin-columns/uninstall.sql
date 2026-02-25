-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('code_core_tracking_optin', 'code_core_plugin_version', 'ssac_settings');

