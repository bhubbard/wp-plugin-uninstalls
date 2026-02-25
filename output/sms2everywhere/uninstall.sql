-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sms2everywhere', 'sms2everywhere_username', 'sms2everywhere_password');

