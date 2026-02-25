-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zetpy_ml_sms_provider', 'zetpy_ml_isms_username', 'zetpy_ml_isms_password', 'zetpy_ml_isms_sender_id', 'zetpy_ml_twilio_account_sid', 'zetpy_ml_twilio_auth_token', 'zetpy_ml_twilio_from_number', 'zetpy_ml_vonage_api_key', 'zetpy_ml_vonage_api_secret', 'zetpy_ml_vonage_from', 'zetpy_ml_otp_expiry', 'zetpy_ml_country_codes', 'zetpy_ml_otp_secret_key', 'zetpy_ml_enable_math_captcha', 'zetpy_ml_redirect_my_account', 'zetpy_ml_replace_checkout_login', 'zetpy_ml_replace_checkout_registration', 'zetpy_ml_hide_password_fields', 'woocommerce_myaccount_page_id', 'zetpy_ml_otp_method');
DELETE FROM wp_options WHERE option_name LIKE 'zetpy_ml_captcha_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mobile_number', 'mobile_number_formatted', 'profile_completed', 'first_name', 'last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('mobile_number', 'mobile_number_formatted', 'profile_completed', 'first_name', 'last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('mobile_number', 'mobile_number_formatted', 'profile_completed', 'first_name', 'last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mobile_number', 'mobile_number_formatted', 'profile_completed', 'first_name', 'last_name');

