-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sms-api-key', 'sms-api-username', 'sms-sender-id');

