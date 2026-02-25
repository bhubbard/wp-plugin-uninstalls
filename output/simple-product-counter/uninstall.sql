-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simple_product_counter_option');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('simple_product_counter_meta', 'simple_product_counter_total_meta', 'simple_product_counter_range_meta_sales', 'simple_product_counter_range_meta_clicks');
DELETE FROM wp_usermeta WHERE meta_key IN ('simple_product_counter_meta', 'simple_product_counter_total_meta', 'simple_product_counter_range_meta_sales', 'simple_product_counter_range_meta_clicks');
DELETE FROM wp_termmeta WHERE meta_key IN ('simple_product_counter_meta', 'simple_product_counter_total_meta', 'simple_product_counter_range_meta_sales', 'simple_product_counter_range_meta_clicks');
DELETE FROM wp_commentmeta WHERE meta_key IN ('simple_product_counter_meta', 'simple_product_counter_total_meta', 'simple_product_counter_range_meta_sales', 'simple_product_counter_range_meta_clicks');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'simple_product_counter_meta_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'simple_product_counter_meta_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'simple_product_counter_meta_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'simple_product_counter_meta_%';

