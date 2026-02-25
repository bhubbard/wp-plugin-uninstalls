-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('integrate_convertkit_wpforms_version', 'ck_code_verifier');
DELETE FROM wp_options WHERE option_name LIKE '%_last_queried';
DELETE FROM wp_options WHERE option_name LIKE '%-review-request';
DELETE FROM wp_options WHERE option_name LIKE '%-review-dismissed';

