-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_custom_orders_table_enabled');
DELETE FROM wp_options WHERE option_name LIKE '%_wcml_is_active';
DELETE FROM wp_options WHERE option_name LIKE '%_enable_logs';
DELETE FROM wp_options WHERE option_name LIKE '%_logs_dictionary';
DELETE FROM wp_options WHERE option_name LIKE '%_installed_plugin_version';
DELETE FROM wp_options WHERE option_name LIKE '%_server_key';
DELETE FROM wp_options WHERE option_name LIKE '%_license_key';

