-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_dibs_easy_settings', 'woocommerce_enable_signup_and_login_from_checkout', 'woocommerce_registration_generate_username', 'woocommerce_registration_generate_password', 'woocommerce_enable_guest_checkout', 'dibs_easy_debuglog', 'woocommerce_shipping_cost_requires_address', 'woocommerce_allowed_countries', 'woocommerce_smart_coupon_apply_before_tax');
DELETE FROM wp_options WHERE option_name LIKE 'dibs_payment_id_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_shipping_email');
DELETE FROM wp_usermeta WHERE meta_key IN ('_shipping_email');
DELETE FROM wp_termmeta WHERE meta_key IN ('_shipping_email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_shipping_email');

