-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cliptakes_subscription', 'cliptakes_api_settings_options', 'cliptakes_general_settings_options', 'cliptakes_plugin_version', 'cliptakes_activation_redirect');

