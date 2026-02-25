-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('admin_mobile', 'msg91_woocommerce_user_info_filled', 'msg91_woocommerce_verify', 'msg91_woocommerce_settings');
DELETE FROM wp_options WHERE option_name LIKE 'msg91_otp_retry_%';

