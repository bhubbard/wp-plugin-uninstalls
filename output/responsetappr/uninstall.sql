-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('responsetap_wp_website_id');
DELETE FROM wp_options WHERE option_name LIKE '%_website_id';

