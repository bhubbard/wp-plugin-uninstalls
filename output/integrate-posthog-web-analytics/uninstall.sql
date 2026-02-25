-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%-review-request';
DELETE FROM wp_options WHERE option_name LIKE '%-review-dismissed';

