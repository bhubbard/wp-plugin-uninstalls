-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('launchmind_blog_api_base', 'launchmind_blog_api_key', 'launchmind_blog_site_id', 'launchmind_blog_cache_ttl', 'launchmind_blog_base_path');
DELETE FROM wp_options WHERE option_name LIKE 'launchmind_blog_%';

