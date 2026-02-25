-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('appeto_secure_key_woo', 'woocommerce_checkout_pay_endpoint', 'appetoLoginNonce', 'appeto_woo_signup_form_app', 'appeto_woo_signup_form_mobile', 'appeto_woo_signup_form_company', 'appeto_woo_signup_form_state', 'appeto_woo_signup_form_city', 'appeto_woo_signup_form_address', 'appeto_woo_signup_form_address2', 'appeto_woo_signup_form_postalcode', 'appeto_pushe_notify_key', 'appeto_pushe_package', 'appeto_onesignal_app_id', 'appeto_onesignal_token', 'json_api_controllers', 'json_api_base');
DELETE FROM wp_options WHERE option_name LIKE 'appeto_ntsite_img_%';
DELETE FROM wp_options WHERE option_name LIKE 'appeto_ck_%';
DELETE FROM wp_options WHERE option_name LIKE 'appeto_cs_%';
DELETE FROM wp_options WHERE option_name LIKE 'appeto_localCk_%';
DELETE FROM wp_options WHERE option_name LIKE 'appeto_localCs_%';
DELETE FROM wp_options WHERE option_name LIKE 'apt_wc_attribute_color-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('appeto_woo_order_key', 'billing_first_name', 'billing_last_name', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_state', 'billing_postcode', 'billing_country', 'billing_email', 'billing_phone', 'shipping_first_name', 'shipping_last_name', 'shipping_address_1', 'shipping_address_2', 'shipping_city', 'shipping_state', 'shipping_postcode', 'shipping_country', '_order_key', 'appetoAuthKey', 'apt-category-image-id', 'apt-category-font-icon', 'woocommerce_apt_card_limit');
DELETE FROM wp_usermeta WHERE meta_key IN ('appeto_woo_order_key', 'billing_first_name', 'billing_last_name', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_state', 'billing_postcode', 'billing_country', 'billing_email', 'billing_phone', 'shipping_first_name', 'shipping_last_name', 'shipping_address_1', 'shipping_address_2', 'shipping_city', 'shipping_state', 'shipping_postcode', 'shipping_country', '_order_key', 'appetoAuthKey', 'apt-category-image-id', 'apt-category-font-icon', 'woocommerce_apt_card_limit');
DELETE FROM wp_termmeta WHERE meta_key IN ('appeto_woo_order_key', 'billing_first_name', 'billing_last_name', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_state', 'billing_postcode', 'billing_country', 'billing_email', 'billing_phone', 'shipping_first_name', 'shipping_last_name', 'shipping_address_1', 'shipping_address_2', 'shipping_city', 'shipping_state', 'shipping_postcode', 'shipping_country', '_order_key', 'appetoAuthKey', 'apt-category-image-id', 'apt-category-font-icon', 'woocommerce_apt_card_limit');
DELETE FROM wp_commentmeta WHERE meta_key IN ('appeto_woo_order_key', 'billing_first_name', 'billing_last_name', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_state', 'billing_postcode', 'billing_country', 'billing_email', 'billing_phone', 'shipping_first_name', 'shipping_last_name', 'shipping_address_1', 'shipping_address_2', 'shipping_city', 'shipping_state', 'shipping_postcode', 'shipping_country', '_order_key', 'appetoAuthKey', 'apt-category-image-id', 'apt-category-font-icon', 'woocommerce_apt_card_limit');

