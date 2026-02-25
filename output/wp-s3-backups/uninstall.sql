-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('s3b-schedule', 's3b-access-key', 's3b-secret-key', 's3b-bucket', 's3b-section');

