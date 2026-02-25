-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bd_woo_min_weight', 'woocommerce_weight_unit');

