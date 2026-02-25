-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%-display-inline-top-shift';
DELETE FROM wp_options WHERE option_name LIKE '%-display-inline-scale-factor';

