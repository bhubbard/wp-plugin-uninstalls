-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_shipping_debug_mode', 'woocommerce_dimension_unit', 'woocommerce_weight_unit', 'active_sitewide_plugins', 'woocommerce_currency', 'flexible_shipping_method_id', 'flexible_shipping_method_creation_date', 'flexible_shipping_rates', 'woocommerce_store_address', 'woocommerce_store_address_2', 'woocommerce_store_city', 'woocommerce_store_postcode', 'woocommerce_default_country', 'woocommerce_allowed_countries', 'woocommerce_ship_to_countries', 'woocommerce_default_customer_address', 'wpdesk_tracker_notice', 'wpdesk_tracker_agree');
DELETE FROM wp_options WHERE option_name LIKE 'flexible_shipping_methods_%';
DELETE FROM wp_options WHERE option_name LIKE 'plugin_activation_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_integration');
DELETE FROM wp_usermeta WHERE meta_key IN ('_integration');
DELETE FROM wp_termmeta WHERE meta_key IN ('_integration');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_integration');

