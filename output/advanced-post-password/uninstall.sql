-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%-no-private-title';
DELETE FROM wp_options WHERE option_name LIKE '%-no-protected-title';
DELETE FROM wp_options WHERE option_name LIKE '%-master-url';
DELETE FROM wp_options WHERE option_name LIKE '%-master-pwd';
DELETE FROM wp_options WHERE option_name LIKE '%-no-admin-password';

