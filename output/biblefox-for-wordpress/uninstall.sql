-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bfox-blog-options', 'bfox-ms-allow-blog-options', 'bfox_blog_network_post_refresh', 'bfox_blog_post_refresh', 'bfox_bp_activity_refresh', 'bfox-enable-bible-directory', 'bfox_translations', 'settings_errors');
DELETE FROM wp_options WHERE option_name LIKE '%_version';

