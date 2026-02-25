-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('u2g_plugin_version', 'u2g_integration_redirect', 'rewrite_rules', 'u2g_integration_options', 'u2g_db_version');

