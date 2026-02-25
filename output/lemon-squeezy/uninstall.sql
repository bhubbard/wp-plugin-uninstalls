-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lsq_api_key_test', 'lsq_api_key', 'lsq_api_key_expires');

