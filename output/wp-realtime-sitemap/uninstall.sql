-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('plugin_wp_realtime_sitemap_settings', 'plugin_wp_realtime_sitemap_version', 'wp_realtime_sitemap_orderby', 'wp_realtime_sitemap_private', 'wp_realtime_sitemap_pages', 'wp_realtime_sitemap_posts', 'wp_realtime_sitemap_tags', 'wp_realtime_sitemap_archives', 'wp_realtime_sitemap_displayorder', 'wp_realtime_sitemap_showprivate', 'wp_realtime_sitemap_showpages', 'wp_realtime_sitemap_showposts', 'wp_realtime_sitemap_showarchives', 'wp_realtime_sitemap_showcategories', 'wp_realtime_sitemap_showcategoriesastc', 'wp_realtime_sitemap_showtags', 'wp_realtime_sitemap_showtagsastc');

