-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('specm_server', 'courier_list_avalible', 'specm_product_remark', 'specm_is_sandbox', 'specm_advance_setting', 'specm_bearer', 'specm_member_information', 'specm_email_account', 'specm_version', 'specm_settings', 'specm_billing_state');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_booking_courier_code', '_order_total_weight', '_shipping_sub_city', '_shippop_status', '_booking_courier_tracking_code', '_booking_tracking_code', '_actually_price', '_booking_price', '_actually_weight', '_order_width', '_order_length', '_order_height', '_shipping_country', '_shippop_purchase_confirm', 'shippop_tracking_number', 'shippop_courier_tracking_number', '_booking_purchase_id', '_confirm_purchase_success', '_shipping_postcode', '_use_shippop_shipping');
DELETE FROM wp_usermeta WHERE meta_key IN ('_booking_courier_code', '_order_total_weight', '_shipping_sub_city', '_shippop_status', '_booking_courier_tracking_code', '_booking_tracking_code', '_actually_price', '_booking_price', '_actually_weight', '_order_width', '_order_length', '_order_height', '_shipping_country', '_shippop_purchase_confirm', 'shippop_tracking_number', 'shippop_courier_tracking_number', '_booking_purchase_id', '_confirm_purchase_success', '_shipping_postcode', '_use_shippop_shipping');
DELETE FROM wp_termmeta WHERE meta_key IN ('_booking_courier_code', '_order_total_weight', '_shipping_sub_city', '_shippop_status', '_booking_courier_tracking_code', '_booking_tracking_code', '_actually_price', '_booking_price', '_actually_weight', '_order_width', '_order_length', '_order_height', '_shipping_country', '_shippop_purchase_confirm', 'shippop_tracking_number', 'shippop_courier_tracking_number', '_booking_purchase_id', '_confirm_purchase_success', '_shipping_postcode', '_use_shippop_shipping');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_booking_courier_code', '_order_total_weight', '_shipping_sub_city', '_shippop_status', '_booking_courier_tracking_code', '_booking_tracking_code', '_actually_price', '_booking_price', '_actually_weight', '_order_width', '_order_length', '_order_height', '_shipping_country', '_shippop_purchase_confirm', 'shippop_tracking_number', 'shippop_courier_tracking_number', '_booking_purchase_id', '_confirm_purchase_success', '_shipping_postcode', '_use_shippop_shipping');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_booking_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_booking_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_booking_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_booking_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%columnshidden';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%columnshidden';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%columnshidden';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%columnshidden';

