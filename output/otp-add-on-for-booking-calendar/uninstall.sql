-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpbc_otp_method', 'wpbc_sms_api_key');
DELETE FROM wp_options WHERE option_name LIKE 'wpbc_booking_otp_%';

