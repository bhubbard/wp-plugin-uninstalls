-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ztbcl_consumer_key', 'ztbcl_consumer_secret_key');

