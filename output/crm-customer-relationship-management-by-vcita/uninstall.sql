-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('embed_code');
DELETE FROM wp_options WHERE option_name LIKE '%init';

