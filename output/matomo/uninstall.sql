-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'wp-piwik_global-piwik_mode', 'matomo_plugin_do_activation_redirect');

