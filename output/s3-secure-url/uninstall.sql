-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('s3_secure_url_aws_access_key', 's3_secure_url_aws_secret_key', 's3_secure_url_plugin_version');

