-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hippoo_ai_settings', 'hippoo_settings', 'hippoo_activation_time', 'hippoo_review_dismissed', 'hippoo_rest_api_last_status', 'hippoo_rest_api_error_dismissed', 'hippoo_permissions_settings', 'woocommerce_currency', 'woocommerce_weight_unit', 'woocommerce_dimension_unit', 'hippoo_invoice_settings', 'woocommerce_allowed_countries', 'woocommerce_specific_allowed_countries', 'woocommerce_all_except_countries', 'hippoo_notification_db_version', 'woocommerce_store_address', 'hippoo_dismissed_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_product_image_gallery', 'out_stock_time');
DELETE FROM wp_usermeta WHERE meta_key IN ('_product_image_gallery', 'out_stock_time');
DELETE FROM wp_termmeta WHERE meta_key IN ('_product_image_gallery', 'out_stock_time');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_product_image_gallery', 'out_stock_time');

