-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%role_conf';
DELETE FROM wp_options WHERE option_name LIKE '%offline_set';

