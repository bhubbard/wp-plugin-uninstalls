-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE 'wpsf_term_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpsf-mt-%';
DELETE FROM wp_options WHERE option_name LIKE 'wpsf_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpsf-tt-%';

