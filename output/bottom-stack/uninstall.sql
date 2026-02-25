-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE 'btmstack_data%';
DELETE FROM wp_options WHERE option_name LIKE 'btmstack_pages%';
DELETE FROM wp_options WHERE option_name LIKE 'btmstack_posts%';

