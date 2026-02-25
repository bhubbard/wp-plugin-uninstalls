-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simple_limited_access_bg', 'simple_limited_access_text', 'simple_limited_access_pages', 'simple_limited_access_post_type', 'simple_limited_access_list', 'simple_limited_access_cookie');

