-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('foodbooklite_options', 'woocommerce_currency_pos', 'woocommerce_checkout_page_id', 'woocommerce_cart_redirect_after_add', 'woocommerce_enable_guest_checkout', 'woocommerce_ship_to_destination', 'woocommerce_enable_order_comments', 'woocommerce_tax_total_display', 'woocommerce_myaccount_page_id');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_price', '_regular_price', '_sale_price', '_sku', '_stock_status', '_order_delivery_boy', '_pickup_time', '_delivery_type', '_extra_featured', '_delivery_date', '_pre_order_status', '_order_tracking_status', '_order_tracking_status_time', 'foodbooklitedelivery_boy');
DELETE FROM wp_usermeta WHERE meta_key IN ('_price', '_regular_price', '_sale_price', '_sku', '_stock_status', '_order_delivery_boy', '_pickup_time', '_delivery_type', '_extra_featured', '_delivery_date', '_pre_order_status', '_order_tracking_status', '_order_tracking_status_time', 'foodbooklitedelivery_boy');
DELETE FROM wp_termmeta WHERE meta_key IN ('_price', '_regular_price', '_sale_price', '_sku', '_stock_status', '_order_delivery_boy', '_pickup_time', '_delivery_type', '_extra_featured', '_delivery_date', '_pre_order_status', '_order_tracking_status', '_order_tracking_status_time', 'foodbooklitedelivery_boy');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_price', '_regular_price', '_sale_price', '_sku', '_stock_status', '_order_delivery_boy', '_pickup_time', '_delivery_type', '_extra_featured', '_delivery_date', '_pre_order_status', '_order_tracking_status', '_order_tracking_status_time', 'foodbooklitedelivery_boy');

