-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('SCRPlugin_activation_completed');
DELETE FROM wp_options WHERE option_name LIKE 'plugin_info_%';

