-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('blog_optimize', 'site_name', 'blog_optimize_wp_head', 'blog_optimize_wp_footer', 'blog_optimize_smtp', 'blog_optimize_data');

