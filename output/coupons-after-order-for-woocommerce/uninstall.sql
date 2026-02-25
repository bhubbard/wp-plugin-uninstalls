-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_coupons_after_order_settings', 'wccao_coupons_after_order_email_subject', 'wccao_coupons_after_order_email_header', 'wccao_coupons_after_order_email_content', 'wccao_coupons_after_order_email_bt_title', 'wccao_coupons_after_order_email_bt_url', 'wccao_coupons_after_order_email_bt_color', 'wccao_coupons_after_order_email_bt_bg_color', 'woocommerce_email_base_color', 'wccao_coupons_after_order_coupon_font_color', 'wccao_coupons_after_order_coupon_bg_color', 'wccao_coupons_after_order_email_bt_font_size', 'wccao_coupons_after_order_enable', 'wccao_coupons_after_order_availability_start_enabled', 'wccao_coupons_after_order_availability_start_date', 'wccao_coupons_after_order_validity_type', 'wccao_coupons_after_order_validitydays', 'wccao_coupons_after_order_validitydate', 'wccao_coupons_after_order_count', 'wccao_coupons_after_order_usage_limit', 'wccao_coupons_after_order_individual_use', 'wccao_coupons_after_order_min_amount', 'wccao_coupons_after_order_email_restriction', 'wccao_coupons_after_order_prefix', 'wccao_coupons_after_order_url_parameter', 'wccao_coupons_after_order_data_uninstall', 'woocommerce_email_background_color', 'woocommerce_email_header_image');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wccao_customer_coupons', '_coupons_generated');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wccao_customer_coupons', '_coupons_generated');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wccao_customer_coupons', '_coupons_generated');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wccao_customer_coupons', '_coupons_generated');

