-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('AWS_AccessKeyId', 'AWS_SecretKey', 'AWS_Tag', 'AWS_Locale');

