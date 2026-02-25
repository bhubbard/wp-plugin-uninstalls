-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('TFSP301_redirects_wildcard', 'TFSP301_redirects');

