-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fsi_snippet_code', 'fsi_identity', 'fsi_plugin_enabled');

