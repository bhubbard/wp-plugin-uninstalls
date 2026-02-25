-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpsh');
DELETE FROM wp_options WHERE option_name LIKE 'woopr_%';

