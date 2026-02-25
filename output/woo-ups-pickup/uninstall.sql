-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_enable_coupons', 'pickups_integration_customer_type', 'woocommerce_woo-ups-pickups_settings', 'woocommerce_weight_unit', 'woocommerce_default_country', 'woocommerce_store_postcode', 'woocommerce_store_address', 'woocommerce_store_address_2', 'woocommerce_store_city', 'wpdesk_helper_options', 'wpdesk_tracker_skip_flexible_shipping_ups', 'wpdesk_tracker_notice', 'active_sitewide_plugins');

