-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qreuz_db_version', 'qreuz_user_data_auth_status', 'qreuz_smart_pricing_premium_category', 'qreuz_smart_pricing_premium_percent', 'qreuz_smart_pricing_sale_category', 'qreuz_smart_pricing_sale_percent', 'qreuz_smart_pricing_price_scheme', 'qreuz_tracking_method', 'qreuz_user_data_toqen', 'qreuz_user_data_qkey', 'qreuz_user_data_email');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_qreuz_track_woocommerce_thankyou_done');
DELETE FROM wp_usermeta WHERE meta_key IN ('_qreuz_track_woocommerce_thankyou_done');
DELETE FROM wp_termmeta WHERE meta_key IN ('_qreuz_track_woocommerce_thankyou_done');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_qreuz_track_woocommerce_thankyou_done');

