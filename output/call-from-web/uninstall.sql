-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cfw_pairing_token', 'cfw_pairing_callback_token', 'cfw_secret_key', 'cfw_plugin_options');

