-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aws-region', 'aws-account-id', 'aws-secret-key', 'gp-source-language');

