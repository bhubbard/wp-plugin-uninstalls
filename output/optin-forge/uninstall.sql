-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('optin_forge_mailerlite_settings', 'optin_forge_plugin_version');

