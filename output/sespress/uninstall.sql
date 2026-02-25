-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sespress_enable_emails', 'sespress_aws_access_key_id', 'sespress_aws_secret_access_key', 'sespress_region', 'sespress_default_sender', 'sespress_test_mode', 'sespress_test_mode_recipient_name', 'sespress_test_mode_recipient_email');

