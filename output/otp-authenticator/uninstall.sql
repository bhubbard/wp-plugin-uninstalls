-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('otpa_logs_settings', 'otpa_settings', 'otpa_style_settings', 'woocommerce_enable_guest_checkout', 'otpa_flush');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('otpa_force_account_validation', 'otpa_2fa_redirect', 'otpa_2fa_checked', 'otpa_2fa_active', 'otpa_need_2fa_check', 'otpa_account_validation_redirect', 'otpa_validated', 'otpa_need_account_validation', 'otpa_otp_request_wait', 'otpa_set_otp_redirect', 'otpa_verification_code', 'otpa_otp_attempts');
DELETE FROM wp_usermeta WHERE meta_key IN ('otpa_force_account_validation', 'otpa_2fa_redirect', 'otpa_2fa_checked', 'otpa_2fa_active', 'otpa_need_2fa_check', 'otpa_account_validation_redirect', 'otpa_validated', 'otpa_need_account_validation', 'otpa_otp_request_wait', 'otpa_set_otp_redirect', 'otpa_verification_code', 'otpa_otp_attempts');
DELETE FROM wp_termmeta WHERE meta_key IN ('otpa_force_account_validation', 'otpa_2fa_redirect', 'otpa_2fa_checked', 'otpa_2fa_active', 'otpa_need_2fa_check', 'otpa_account_validation_redirect', 'otpa_validated', 'otpa_need_account_validation', 'otpa_otp_request_wait', 'otpa_set_otp_redirect', 'otpa_verification_code', 'otpa_otp_attempts');
DELETE FROM wp_commentmeta WHERE meta_key IN ('otpa_force_account_validation', 'otpa_2fa_redirect', 'otpa_2fa_checked', 'otpa_2fa_active', 'otpa_need_2fa_check', 'otpa_account_validation_redirect', 'otpa_validated', 'otpa_need_account_validation', 'otpa_otp_request_wait', 'otpa_set_otp_redirect', 'otpa_verification_code', 'otpa_otp_attempts');

