-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE 'mainwp_eir_%';
DELETE FROM wp_options WHERE option_name LIKE 'mainwp_ein_%';

