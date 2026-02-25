-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%-general-options';
DELETE FROM wp_options WHERE option_name LIKE '%-messaging-options';

