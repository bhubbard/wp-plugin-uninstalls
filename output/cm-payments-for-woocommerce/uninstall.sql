-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cmpay_access_token', 'cmpay_token_expiry_time');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

