-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smspilot_apikey', 'smspilot_sender', 'smspilot_vendor_phone', 'smspilot_vendor_status1', 'smspilot_vendor_msg1', 'smspilot_vendor_voice1', 'smspilot_vendor_status2', 'smspilot_vendor_msg2', 'smspilot_shopper_status1', 'smspilot_shopper_msg1', 'smspilot_shopper_status2', 'smspilot_shopper_msg2', 'smspilot_last_error', 'smspilot_shopper_status3', 'smspilot_shopper_msg3');
DELETE FROM wp_options WHERE option_name LIKE 'smspilot_%';

