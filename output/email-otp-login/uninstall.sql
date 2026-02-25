-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('emaiotlo_email_login_otp', 'emaiotlo_email_login_otp_expiry');
DELETE FROM wp_usermeta WHERE meta_key IN ('emaiotlo_email_login_otp', 'emaiotlo_email_login_otp_expiry');
DELETE FROM wp_termmeta WHERE meta_key IN ('emaiotlo_email_login_otp', 'emaiotlo_email_login_otp_expiry');
DELETE FROM wp_commentmeta WHERE meta_key IN ('emaiotlo_email_login_otp', 'emaiotlo_email_login_otp_expiry');

