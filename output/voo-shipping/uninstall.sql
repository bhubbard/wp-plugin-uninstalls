-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_sideup_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sideup_awp_label', 'sideup_status', 'sideup_tracking_number', 'sideup_payment_link', 'sideup_cash_collection', 'sideup_payment_status', '_order_key', '_sideup_order_id_temp', '_wp_trash_meta_time', '_order_total', '_shipping_state', '_billing_state', '_billing_city', '_billing_address_1', '_billing_phone', '_billing_first_name', '_billing_last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('sideup_awp_label', 'sideup_status', 'sideup_tracking_number', 'sideup_payment_link', 'sideup_cash_collection', 'sideup_payment_status', '_order_key', '_sideup_order_id_temp', '_wp_trash_meta_time', '_order_total', '_shipping_state', '_billing_state', '_billing_city', '_billing_address_1', '_billing_phone', '_billing_first_name', '_billing_last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('sideup_awp_label', 'sideup_status', 'sideup_tracking_number', 'sideup_payment_link', 'sideup_cash_collection', 'sideup_payment_status', '_order_key', '_sideup_order_id_temp', '_wp_trash_meta_time', '_order_total', '_shipping_state', '_billing_state', '_billing_city', '_billing_address_1', '_billing_phone', '_billing_first_name', '_billing_last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sideup_awp_label', 'sideup_status', 'sideup_tracking_number', 'sideup_payment_link', 'sideup_cash_collection', 'sideup_payment_status', '_order_key', '_sideup_order_id_temp', '_wp_trash_meta_time', '_order_total', '_shipping_state', '_billing_state', '_billing_city', '_billing_address_1', '_billing_phone', '_billing_first_name', '_billing_last_name');

