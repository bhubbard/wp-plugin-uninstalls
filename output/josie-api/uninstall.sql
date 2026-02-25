-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('josie_api_cors', 'josie_api_max_posts_per_page');
DELETE FROM wp_options WHERE option_name LIKE 'tlc_up__%';
DELETE FROM wp_options WHERE option_name LIKE 'tlc__%';

