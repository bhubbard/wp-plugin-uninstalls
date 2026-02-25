-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_store_address', 'woocommerce_store_address_2', 'woocommerce_store_postcode', 'woocommerce_store_city', 'woocommerce_default_country', 'iee_free_blocked_by_pro', 'iee_free_auto_deactivated');

