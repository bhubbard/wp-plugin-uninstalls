-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('otp-by-email');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_otp_on_success', '_otp_on_failure');
DELETE FROM wp_usermeta WHERE meta_key IN ('_otp_on_success', '_otp_on_failure');
DELETE FROM wp_termmeta WHERE meta_key IN ('_otp_on_success', '_otp_on_failure');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_otp_on_success', '_otp_on_failure');

