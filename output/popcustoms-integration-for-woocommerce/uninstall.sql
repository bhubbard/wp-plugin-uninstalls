-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_checkout_phone_field');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pop_basic_code', '_pop_product_info');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pop_basic_code', '_pop_product_info');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pop_basic_code', '_pop_product_info');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pop_basic_code', '_pop_product_info');

