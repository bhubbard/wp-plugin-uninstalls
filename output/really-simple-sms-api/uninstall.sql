-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sms_url', 'sms_user', 'sms_password', 'sms_sender_id', 'sms_mobile', 'sms_msg');

