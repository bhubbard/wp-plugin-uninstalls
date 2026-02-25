-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('stocktech_alerts_options', 'stocktech_alerts_my_plugin_do_activation_redirect');

