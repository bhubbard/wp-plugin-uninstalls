-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_wp_pargo_settings', 'toptal_save_saved_page_id', 'woocommerce_weight_unit', 'woocommerce_cart_page_id', 'woocommerce_checkout_page_id', 'pargo_dismissed_rating_notice_version', 'pargo_style_button', 'pargo_style_title', 'pargo_style_desc', 'pargo_style_image');
DELETE FROM wp_options WHERE option_name LIKE '%_token';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pargo_waybill', 'pargo_order_sent', 'pargo_waybills', 'user_phone', 'shipping_suburb', 'billing_suburb');
DELETE FROM wp_usermeta WHERE meta_key IN ('pargo_waybill', 'pargo_order_sent', 'pargo_waybills', 'user_phone', 'shipping_suburb', 'billing_suburb');
DELETE FROM wp_termmeta WHERE meta_key IN ('pargo_waybill', 'pargo_order_sent', 'pargo_waybills', 'user_phone', 'shipping_suburb', 'billing_suburb');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pargo_waybill', 'pargo_order_sent', 'pargo_waybills', 'user_phone', 'shipping_suburb', 'billing_suburb');

