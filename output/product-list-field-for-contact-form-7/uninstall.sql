-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%wplfcf7error';
DELETE FROM wp_options WHERE option_name LIKE '%wplfcf7wwwerror';

