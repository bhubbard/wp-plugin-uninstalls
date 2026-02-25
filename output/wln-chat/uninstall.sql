-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('position_option', 'wln_settings_page', 'wln_register_plugin_settings', 'wln-plugin-settings-group-fields', 'phone_option', 'message_option', 'texticon_option', 'position_option_v');

