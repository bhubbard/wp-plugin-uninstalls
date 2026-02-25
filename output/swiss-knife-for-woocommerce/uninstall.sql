-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpv_skw_settings', 'skw_active_modules', 'woocommerce_manage_stock', 'skw_db_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_custom_cart_text_single', '_custom_cart_text_archive', '_sale_price_dates_from', '_sale_price_dates_to', '_max_stock_reference');
DELETE FROM wp_usermeta WHERE meta_key IN ('_custom_cart_text_single', '_custom_cart_text_archive', '_sale_price_dates_from', '_sale_price_dates_to', '_max_stock_reference');
DELETE FROM wp_termmeta WHERE meta_key IN ('_custom_cart_text_single', '_custom_cart_text_archive', '_sale_price_dates_from', '_sale_price_dates_to', '_max_stock_reference');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_custom_cart_text_single', '_custom_cart_text_archive', '_sale_price_dates_from', '_sale_price_dates_to', '_max_stock_reference');

