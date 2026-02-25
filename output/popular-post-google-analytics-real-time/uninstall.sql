-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE '%client_id';
DELETE FROM wp_options WHERE option_name LIKE '%email';
DELETE FROM wp_options WHERE option_name LIKE '%account_id';
DELETE FROM wp_options WHERE option_name LIKE '%path_private_key';
DELETE FROM wp_options WHERE option_name LIKE '%popular_posts_number';

