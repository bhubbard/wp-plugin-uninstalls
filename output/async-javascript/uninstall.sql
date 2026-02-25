-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aj_gtmetrix_results', 'aj_gtmetrix_username', 'aj_gtmetrix_api_key', 'aj_gtmetrix_server', 'aj_enabled', 'aj_method', 'aj_jquery', 'aj_async', 'aj_defer', 'aj_exclusions', 'aj_plugin_exclusions', 'aj_theme_exclusions', 'aj_autoptimize_enabled', 'aj_autoptimize_method', 'aj_enabled_logged', 'aj_enabled_shop', 'aj_version');

