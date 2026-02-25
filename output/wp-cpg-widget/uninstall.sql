-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_cpg_plugin_db_default', 'wp_cpg_plugin_options', 'wp_cpg_widget_options');
DELETE FROM wp_options WHERE option_name LIKE 'wp_cpg_plugin_db_%';

