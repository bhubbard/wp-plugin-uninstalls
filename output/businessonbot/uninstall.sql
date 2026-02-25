-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('businessonbot_db_version', 'businessonbot_api_script', 'businessonbot_abandoned_product_timeout', 'businessonbot_abandoned_cart_timeout', 'businessonbot_security_key', 'businessonbot_plugin_track_guest_cart_from_cart_page', 'businessonbot_enable_gdpr_consent', 'businessonbot_guest_cart_capture_msg', 'businessonbot_gdpr_allow_opt_out', 'businessonbot_gdpr_opt_out_message', 'businessonbot_plugin_cart_abandoned_time', 'woocommerce_force_ssl_checkout', 'businessonbot_abandoned_id', 'businessonbot_sent_id', 'businessonbot_user_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_phone', 'businessonbot_gdpr_tracking_choice', '_businessonbot_modified_cart', '_woocommerce_persistent_cart', 'billing_first_name', 'billing_last_name', 'billing_email', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_state', 'billing_country', 'billing_zipcode', 'shipping_first_name', 'shipping_last_name', 'shipping_address_1', 'shipping_address_2', 'shipping_city', 'shipping_state', 'shipping_postcode', 'shipping_country', '_businessonbot_coupon');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_phone', 'businessonbot_gdpr_tracking_choice', '_businessonbot_modified_cart', '_woocommerce_persistent_cart', 'billing_first_name', 'billing_last_name', 'billing_email', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_state', 'billing_country', 'billing_zipcode', 'shipping_first_name', 'shipping_last_name', 'shipping_address_1', 'shipping_address_2', 'shipping_city', 'shipping_state', 'shipping_postcode', 'shipping_country', '_businessonbot_coupon');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_phone', 'businessonbot_gdpr_tracking_choice', '_businessonbot_modified_cart', '_woocommerce_persistent_cart', 'billing_first_name', 'billing_last_name', 'billing_email', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_state', 'billing_country', 'billing_zipcode', 'shipping_first_name', 'shipping_last_name', 'shipping_address_1', 'shipping_address_2', 'shipping_city', 'shipping_state', 'shipping_postcode', 'shipping_country', '_businessonbot_coupon');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_phone', 'businessonbot_gdpr_tracking_choice', '_businessonbot_modified_cart', '_woocommerce_persistent_cart', 'billing_first_name', 'billing_last_name', 'billing_email', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_state', 'billing_country', 'billing_zipcode', 'shipping_first_name', 'shipping_last_name', 'shipping_address_1', 'shipping_address_2', 'shipping_city', 'shipping_state', 'shipping_postcode', 'shipping_country', '_businessonbot_coupon');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_businessonbot_modified_cart%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_businessonbot_modified_cart%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_businessonbot_modified_cart%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_businessonbot_modified_cart%';

