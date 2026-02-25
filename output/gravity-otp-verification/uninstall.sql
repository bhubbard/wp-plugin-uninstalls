-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gravity_otp_verification_db_version');
DELETE FROM wp_options WHERE option_name LIKE 'gravity_otp_verification_attempts_%';
DELETE FROM wp_options WHERE option_name LIKE 'gravity_otp_verification_%';

