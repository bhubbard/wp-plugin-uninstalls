-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('AllInOneNoticeTime', 'DismissAllInOneNotice', 'woocommerce_tax_based_on', 'rednaowooextraproduct_dont_show_again', 'woocommerce_hide_out_of_stock_items', '_woo_extra_products_go_to_welcome');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '_rednao_advanced_product_server_options_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_rednao_advanced_product_server_options_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_rednao_advanced_product_server_options_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_rednao_advanced_product_server_options_%';

