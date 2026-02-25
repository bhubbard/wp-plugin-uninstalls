-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nusvg_db_version', 'nusvg_plugin_version', 'nusvg_expiration');

