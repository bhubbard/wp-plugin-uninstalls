-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('baarmfa_settings', 'baar_settings', 'BAAR_EmailSetting', 'BAAR_Report', 'bca_brand_name', 'bca_brand_logo');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_setup_later_date', 'account_status', '_otp_verified', 'first_name', 'last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('_setup_later_date', 'account_status', '_otp_verified', 'first_name', 'last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('_setup_later_date', 'account_status', '_otp_verified', 'first_name', 'last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_setup_later_date', 'account_status', '_otp_verified', 'first_name', 'last_name');

