-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pmpro_gateway');
DELETE FROM wp_options WHERE option_name LIKE '%_gourl_log';

