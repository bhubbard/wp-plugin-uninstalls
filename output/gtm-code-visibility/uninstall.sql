-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gtm_code_head', 'gtm_code_body');
DELETE FROM wp_options WHERE option_name LIKE 'gtm_code_%';

