-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('site_name');
DELETE FROM wp_options WHERE option_name LIKE '% header';

