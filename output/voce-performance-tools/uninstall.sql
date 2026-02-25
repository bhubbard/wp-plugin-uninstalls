-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE 'tlc_up__%';
DELETE FROM wp_options WHERE option_name LIKE 'tlc__%';
DELETE FROM wp_options WHERE option_name LIKE 'nsa_action%';

