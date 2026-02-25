-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('user_verification_settings', 'woocommerce_registration_generate_username', 'user_verification_notices', 'user_verification_stats_count', 'user_verification_verification_page', 'user_verification_redirect_verified', 'user_verification_login_automatically', 'uv_exclude_user_roles', 'uv_wc_disable_auto_login', 'uv_wc_message_after_registration', 'uv_wc_redirect_after_payment', 'uv_um_disable_auto_login', 'uv_um_message_before_header', 'uv_pmpro_disable_auto_login', 'uv_pmpro_message_checkout_page', 'uv_pmpro_redirect_timout', 'uv_pmpro_redirect_after_checkout_page_id', 'user_verification_enable_block_domain', 'uv_settings_blocked_domain', 'uv_settings_allowed_domain', 'user_verification_enable_block_username', 'uv_settings_blocked_username', 'uv_message_invalid_key', 'uv_message_activation_sent', 'uv_message_verify_email', 'user_verification_registered_message', 'uv_message_verification_success', 'uv_message_captcha_error', 'uv_recaptcha_sitekey', 'uv_recaptcha_login_page', 'uv_recaptcha_register_page', 'uv_recaptcha_lostpassword_page', 'uv_recaptcha_comment_form', 'uv_recaptcha_wc_login_form', 'uv_recaptcha_wc_register_form', 'uv_recaptcha_wc_lostpassword_form', 'uv_email_templates_data');
DELETE FROM wp_options WHERE option_name LIKE 'login_attempts_%';
DELETE FROM wp_options WHERE option_name LIKE 'uv_otp_count_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('user_activation_status', 'user_activation_key', 'phone_number', 'uv_otp', 'magic_login_key');
DELETE FROM wp_usermeta WHERE meta_key IN ('user_activation_status', 'user_activation_key', 'phone_number', 'uv_otp', 'magic_login_key');
DELETE FROM wp_termmeta WHERE meta_key IN ('user_activation_status', 'user_activation_key', 'phone_number', 'uv_otp', 'magic_login_key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('user_activation_status', 'user_activation_key', 'phone_number', 'uv_otp', 'magic_login_key');

