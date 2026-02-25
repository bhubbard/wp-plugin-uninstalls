-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('easy_php_settings_settings', 'easy_php_settings_wp_memory_settings', 'easy_php_settings_debugging_settings');

