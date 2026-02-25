-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smartpay_settings', 'smartpay_db_version', 'smartpay_settings_general', 'smartpay_settings_gateways', 'smartpay_settings_emails', 'smartpay_settings_licenses', 'smartpay_settings_extensions', 'smartpay_pro_license_data', 'wpsmartpay_activation_redirect', 'smartpay_check_protect_upload_directory');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('smartpay_opted_in_dismissed_at', 'smartpay_optin_second_time_dismissed_at', 'smartpay_optin_first_time_dismissed_at', 'smartpay_optin_third_time_dismissed_at');
DELETE FROM wp_usermeta WHERE meta_key IN ('smartpay_opted_in_dismissed_at', 'smartpay_optin_second_time_dismissed_at', 'smartpay_optin_first_time_dismissed_at', 'smartpay_optin_third_time_dismissed_at');
DELETE FROM wp_termmeta WHERE meta_key IN ('smartpay_opted_in_dismissed_at', 'smartpay_optin_second_time_dismissed_at', 'smartpay_optin_first_time_dismissed_at', 'smartpay_optin_third_time_dismissed_at');
DELETE FROM wp_commentmeta WHERE meta_key IN ('smartpay_opted_in_dismissed_at', 'smartpay_optin_second_time_dismissed_at', 'smartpay_optin_first_time_dismissed_at', 'smartpay_optin_third_time_dismissed_at');

