-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_dropp_is_settings', 'woocommerce_dropp_shipping_db_version', 'woocommerce_calc_taxes', 'woocommerce_prices_include_tax', 'woocommerce_tax_display_cart', 'dropp_for_woocommerce_admin_notices', 'dropp_pickup_enabled', 'dropp_for_woocommerce_price_info', 'dropp_delivery_postcodes');

