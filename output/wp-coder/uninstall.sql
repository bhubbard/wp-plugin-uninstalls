-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_wpcoder_enable_debug_log', '_wpcoder_enable_php', '_wp_coder_snippets', '_wp_coder_tools', 'wp_coder_admin_error_php_notice');
DELETE FROM wp_options WHERE option_name LIKE 'wow_license_key_%';
DELETE FROM wp_options WHERE option_name LIKE '%_db_version';

