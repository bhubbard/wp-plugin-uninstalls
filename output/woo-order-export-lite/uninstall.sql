-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_custom_orders_table_enabled', 'woocommerce_placeholder_image', 'woocommerce_prices_include_tax');
DELETE FROM wp_options WHERE option_name LIKE '%-V1';
DELETE FROM wp_options WHERE option_name LIKE '%download_filename';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_downloadable_files');
DELETE FROM wp_usermeta WHERE meta_key IN ('_downloadable_files');
DELETE FROM wp_termmeta WHERE meta_key IN ('_downloadable_files');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_downloadable_files');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'woe_order_exported%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'woe_order_exported%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'woe_order_exported%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'woe_order_exported%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

