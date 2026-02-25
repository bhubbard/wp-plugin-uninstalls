-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('settings_control_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('fullname', 'email_verified', 'email_verification_token', 'two_factor_otp', 'two_factor_otp_expiry');
DELETE FROM wp_usermeta WHERE meta_key IN ('fullname', 'email_verified', 'email_verification_token', 'two_factor_otp', 'two_factor_otp_expiry');
DELETE FROM wp_termmeta WHERE meta_key IN ('fullname', 'email_verified', 'email_verification_token', 'two_factor_otp', 'two_factor_otp_expiry');
DELETE FROM wp_commentmeta WHERE meta_key IN ('fullname', 'email_verified', 'email_verification_token', 'two_factor_otp', 'two_factor_otp_expiry');

