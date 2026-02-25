-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%-abmb';
DELETE FROM wp_options WHERE option_name LIKE '%-abmp';
DELETE FROM wp_options WHERE option_name LIKE '%-abmsi';

