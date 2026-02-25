-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('blog_alias_redirect_with_path', 'blog_alias_redirect_wp_admin', 'multisite_blog_alias_sunrise_active');
DELETE FROM wp_options WHERE option_name LIKE '%_version';

