-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('plugin_update_notifier_email', 'plugin_update_notifier_interval', 'update_plugins', 'update_themes', 'update_core');

