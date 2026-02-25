-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_russian_post_settings', 'multi_packages_type', 'multi_packages_enabled', 'multi_packages_free_shipping');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_price', 'post_rf_point', 'post_rf_form_type', 'cancel_request', 'russian_post_sent', '_3pl_stock_field', '3pl_reserved');
DELETE FROM wp_usermeta WHERE meta_key IN ('_price', 'post_rf_point', 'post_rf_form_type', 'cancel_request', 'russian_post_sent', '_3pl_stock_field', '3pl_reserved');
DELETE FROM wp_termmeta WHERE meta_key IN ('_price', 'post_rf_point', 'post_rf_form_type', 'cancel_request', 'russian_post_sent', '_3pl_stock_field', '3pl_reserved');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_price', 'post_rf_point', 'post_rf_form_type', 'cancel_request', 'russian_post_sent', '_3pl_stock_field', '3pl_reserved');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_russian_post_order_courier_id_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_russian_post_order_courier_id_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_russian_post_order_courier_id_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_russian_post_order_courier_id_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_russian_post_order_courier_data_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_russian_post_order_courier_data_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_russian_post_order_courier_data_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_russian_post_order_courier_data_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_russian_post_order_id_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_russian_post_order_id_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_russian_post_order_id_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_russian_post_order_id_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_russian_post_order_created_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_russian_post_order_created_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_russian_post_order_created_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_russian_post_order_created_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_russian_post_order_batch_name_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_russian_post_order_batch_name_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_russian_post_order_batch_name_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_russian_post_order_batch_name_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_russian_post_barcode_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_russian_post_barcode_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_russian_post_barcode_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_russian_post_barcode_%';

