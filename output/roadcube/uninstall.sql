-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('roadcube_get_countries_log', 'roadcube_country_data', 'roadcube_user_register_init_log', 'roadcube_user_register_log', 'roadcube_get_the_point_log', 'roadcube_user_coupon_claim_log', 'roadcube_sync_faild_status', 'roadcube_trans_create_log', 'roadcube_cancel_trans_create_log', 'roadcube_user_coupons_log', 'roadcube_category_log', 'roadcube_create_product_log', 'roadcube_store_cat_id', 'roadcube_previous_offline_store_transactions', 'roadcube_settings', 'roadcube_product_log', 'roadcube_translations', 'roadcube_user_sync_log', 'roadcube_log');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('roadcube_mobile', 'roadcube_gender', 'roadcube_birthday', 'roadcube_country_id', 'roadcube_claimed_coupons', 'roadcube_product_id', 'roadcube_product_created_data', '_rc_loyalty_service_request', '_rc_loyalty_service_response', '_rc_meta_service_request', '_rc_meta_service_response', '_rc_sync_id', 'billing_phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('roadcube_mobile', 'roadcube_gender', 'roadcube_birthday', 'roadcube_country_id', 'roadcube_claimed_coupons', 'roadcube_product_id', 'roadcube_product_created_data', '_rc_loyalty_service_request', '_rc_loyalty_service_response', '_rc_meta_service_request', '_rc_meta_service_response', '_rc_sync_id', 'billing_phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('roadcube_mobile', 'roadcube_gender', 'roadcube_birthday', 'roadcube_country_id', 'roadcube_claimed_coupons', 'roadcube_product_id', 'roadcube_product_created_data', '_rc_loyalty_service_request', '_rc_loyalty_service_response', '_rc_meta_service_request', '_rc_meta_service_response', '_rc_sync_id', 'billing_phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('roadcube_mobile', 'roadcube_gender', 'roadcube_birthday', 'roadcube_country_id', 'roadcube_claimed_coupons', 'roadcube_product_id', 'roadcube_product_created_data', '_rc_loyalty_service_request', '_rc_loyalty_service_response', '_rc_meta_service_request', '_rc_meta_service_response', '_rc_sync_id', 'billing_phone');

