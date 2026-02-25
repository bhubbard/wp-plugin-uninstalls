-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mobile_bankid_integration_env', 'mobile_bankid_integration_certificate', 'mobile_bankid_integration_password', 'mobile_bankid_integration_wplogin', 'mobile_bankid_integration_registration', 'mobile_bankid_integration_terms', 'mobile_bankid_integration_session_secret', 'mobile_bankid_integration_woocommerce_login', 'mobile_bankid_integration_woocommerce_checkout_require_bankid', 'mobile_bankid_integration_woocommerce_age_check');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mobile_bankid_integration_personal_number');
DELETE FROM wp_usermeta WHERE meta_key IN ('mobile_bankid_integration_personal_number');
DELETE FROM wp_termmeta WHERE meta_key IN ('mobile_bankid_integration_personal_number');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mobile_bankid_integration_personal_number');

