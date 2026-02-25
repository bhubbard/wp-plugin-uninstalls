-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%-enabled';
DELETE FROM wp_options WHERE option_name LIKE '%-basic-js';
DELETE FROM wp_options WHERE option_name LIKE '%-load-css';
DELETE FROM wp_options WHERE option_name LIKE '%-ads';

