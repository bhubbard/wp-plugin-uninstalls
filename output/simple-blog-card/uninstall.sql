-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simpleblogcard_settings', 'simpleblogcard_access_ids', 'simpleblogcard_template', 'simpleblogcard_timeout');
DELETE FROM wp_options WHERE option_name LIKE 'simple_blog_card_%';

