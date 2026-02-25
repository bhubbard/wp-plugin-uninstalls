-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('text_example', 'ranking_post_token', 'gcreate_ranking_post_website', 'gcreate_ranking_post_website_api');
DELETE FROM wp_options WHERE option_name LIKE '%token';
DELETE FROM wp_options WHERE option_name LIKE '%admin_email';
DELETE FROM wp_options WHERE option_name LIKE '%admin_user_id';

