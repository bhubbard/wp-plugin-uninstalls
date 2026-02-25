-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('unic_language', 'unic_enable_iab', 'unic_license', 'unic_type', 'unic_region', 'unic_company', 'unic_logo', 'unic_policy_url', 'unic_enable_gdpr', 'unic_enable_ccpa', 'unic_version', 'unic_enable_google', 'unic_enable_cookie');

