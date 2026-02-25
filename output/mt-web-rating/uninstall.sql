-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%google_id';
DELETE FROM wp_options WHERE option_name LIKE '%facebook_id';
DELETE FROM wp_options WHERE option_name LIKE '%tripadvisor_id';

