-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('apaczka_woocommerce_SC_CACHE', 'apaczka_woocommerce_SC_CACHE_TIMESTAMP', 'apaczka_pl_api_returned_error', 'woocommerce_custom_orders_table_enabled', 'apaczka_countries_cache', 'apaczka_woocommerce_settings_general_apaczka_map_debug_mode', 'woocommerce_default_country', 'apaczka_woocommerce_settings_general_dispath_point_inpost', 'apaczka_woocommerce_settings_general_dispath_point_kurier48', 'apaczka_woocommerce_settings_general_dispath_point_ups', 'apaczka_woocommerce_settings_general_dispath_point_dpd');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_apaczka_last_order_object');
DELETE FROM wp_usermeta WHERE meta_key IN ('_apaczka_last_order_object');
DELETE FROM wp_termmeta WHERE meta_key IN ('_apaczka_last_order_object');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_apaczka_last_order_object');

