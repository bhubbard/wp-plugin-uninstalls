-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('doubridge_api', 'woocommerce_default_country', 'woocommerce_currency', 'product_cat_children');

