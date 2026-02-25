-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%prevnext';
DELETE FROM wp_options WHERE option_name LIKE '%active';
DELETE FROM wp_options WHERE option_name LIKE '%suffix';

