-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rg_gforms_enable_html5');
DELETE FROM wp_options WHERE option_name LIKE '%_last_queried';
DELETE FROM wp_options WHERE option_name LIKE '%-review-request';
DELETE FROM wp_options WHERE option_name LIKE '%-review-dismissed';

