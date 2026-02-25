-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('isd-amazon_key', 'isd-amazon_secret_key', 'isd-bucket', 'isd-folder');

