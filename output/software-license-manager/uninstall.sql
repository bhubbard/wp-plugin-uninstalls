-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('slm_plugin_options', 'wp_lic_mgr_db_version');

