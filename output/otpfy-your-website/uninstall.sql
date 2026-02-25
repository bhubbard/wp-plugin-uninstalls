-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_myaccount_page_id', 'woocommerce_default_country', 'otpfy-for-wordpress-settings', 'otpfy_refresh_balance_onload');
DELETE FROM wp_options WHERE option_name LIKE 'otpfy_otp_%';
DELETE FROM wp_options WHERE option_name LIKE 'otpfy_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bt_otpfy_user_mobile_number', 'billing_phone', '_otp_verified', '_otpfy_otp_mobile', '_otpfy_otp_verified');
DELETE FROM wp_usermeta WHERE meta_key IN ('bt_otpfy_user_mobile_number', 'billing_phone', '_otp_verified', '_otpfy_otp_mobile', '_otpfy_otp_verified');
DELETE FROM wp_termmeta WHERE meta_key IN ('bt_otpfy_user_mobile_number', 'billing_phone', '_otp_verified', '_otpfy_otp_mobile', '_otpfy_otp_verified');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bt_otpfy_user_mobile_number', 'billing_phone', '_otp_verified', '_otpfy_otp_mobile', '_otpfy_otp_verified');

