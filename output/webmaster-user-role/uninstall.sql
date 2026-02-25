-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('scd_ec', 'td-webmaster-last-caps-update', 'td-webmaster-user-role-version');
DELETE FROM wp_options WHERE option_name LIKE '%_options';

