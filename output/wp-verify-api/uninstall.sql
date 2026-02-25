-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_verify_api_email_text', 'wp_verify_api_code_expire_time', 'wp_verify_api_code_digits');

