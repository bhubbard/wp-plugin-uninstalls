-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cpsh_plugin_admin_columns_info', 'cpsh_plugin_timeout');

