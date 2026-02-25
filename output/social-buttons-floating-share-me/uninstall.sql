-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ca-sms-twitter', 'ca-sms-facebook', 'ca-sms-googleplus');

