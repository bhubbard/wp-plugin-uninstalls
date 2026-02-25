-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_enable_myaccount_registration', 'xoo_ml_otp_users', 'xoo_ml_last_cleanup', 'xoo_tracking_consent_mobile-login-woocommerce', 'xoo-ml-services-options', 'xoo-ml-phone-options', 'xoo-ml-sdk-dependant', 'xoo-ml-version', 'xoo_ml_el_refresh_fields');
DELETE FROM wp_options WHERE option_name LIKE 'xoo_tracking_consent_%';
DELETE FROM wp_options WHERE option_name LIKE '%_theme_templates_data';
DELETE FROM wp_options WHERE option_name LIKE 'xoo_tracking_consent_last_sent_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('xoo_ml_phone_code', 'xoo_ml_phone_no', 'xoo_ml_phone_display', 'billing_phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('xoo_ml_phone_code', 'xoo_ml_phone_no', 'xoo_ml_phone_display', 'billing_phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('xoo_ml_phone_code', 'xoo_ml_phone_no', 'xoo_ml_phone_display', 'billing_phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('xoo_ml_phone_code', 'xoo_ml_phone_no', 'xoo_ml_phone_display', 'billing_phone');

