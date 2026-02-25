-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dsv_token', 'dsv_email_validation', 'dsv_telephone_validation', 'dsv_password', 'dsv_error');

