-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_hide_out_of_stock_items');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('hide_products_in_cat');
DELETE FROM wp_usermeta WHERE meta_key IN ('hide_products_in_cat');
DELETE FROM wp_termmeta WHERE meta_key IN ('hide_products_in_cat');
DELETE FROM wp_commentmeta WHERE meta_key IN ('hide_products_in_cat');

