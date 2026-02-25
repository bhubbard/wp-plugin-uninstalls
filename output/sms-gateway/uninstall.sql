-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sms_sender_api_key', 'sms_sender_capabilities', 'sms_sender_test');

