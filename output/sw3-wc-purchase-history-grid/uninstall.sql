-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('num_of_columns', 'num_of_products', 'cat_operator', 'phg_cats', 'phg_order_by', 'phg_order', 'product_visibility', 'phg_tags', 'tag_operator');

