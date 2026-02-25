-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gateman_login_settings');
DELETE FROM wp_options WHERE option_name LIKE 'gateman_otp_%';

