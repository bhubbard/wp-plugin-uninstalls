-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pfv_payment', 'pfv_license', 'pfv_cache_timeout', 'pfv_plugin_error', 'pfv_db_version');

