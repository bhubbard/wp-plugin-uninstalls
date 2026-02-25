-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('skydropx_visited_permalink_view', 'SKYDROPX_SHOP_ID', 'rewrite_rules', 'SKYDROPX_ENABLE_QUOTATION', 'SKYDROPX_COUNTRY_QUOTATION', 'SKYDROPX_TOKEN', 'woocommerce_store_postcode', 'woocommerce_store_address', 'woocommerce_store_address_2', 'woocommerce_store_city', 'woocommerce_default_country');

