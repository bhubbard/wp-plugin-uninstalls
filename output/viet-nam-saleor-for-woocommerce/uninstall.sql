-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_weight_unit', 'vnsfw_db_version');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_disable_shipping', 'pay_shipping_fee', 'shipping_phone', '_ghtk_code', '_vtp_code', 'shipping_service', '_wc_shipping_status', 'billing_state', 'billing_city');
DELETE FROM wp_usermeta WHERE meta_key IN ('_disable_shipping', 'pay_shipping_fee', 'shipping_phone', '_ghtk_code', '_vtp_code', 'shipping_service', '_wc_shipping_status', 'billing_state', 'billing_city');
DELETE FROM wp_termmeta WHERE meta_key IN ('_disable_shipping', 'pay_shipping_fee', 'shipping_phone', '_ghtk_code', '_vtp_code', 'shipping_service', '_wc_shipping_status', 'billing_state', 'billing_city');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_disable_shipping', 'pay_shipping_fee', 'shipping_phone', '_ghtk_code', '_vtp_code', 'shipping_service', '_wc_shipping_status', 'billing_state', 'billing_city');

