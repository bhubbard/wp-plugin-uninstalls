-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kitgenix_order_tracking_for_woocommerce_lookup_count', 'kitgenix_order_tracking_for_woocommerce_tracking_numbers_added', 'woocommerce_store_address', 'woocommerce_store_address_2', 'woocommerce_store_city', 'woocommerce_store_postcode', 'kitgenix_order_tracking_for_woocommerce_carriers_settings', 'kitgenix_order_tracking_for_woocommerce_do_activation_redirect');

