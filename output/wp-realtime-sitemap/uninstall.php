<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('plugin_wp_realtime_sitemap_settings');
delete_site_option('plugin_wp_realtime_sitemap_settings');
delete_option('plugin_wp_realtime_sitemap_version');
delete_site_option('plugin_wp_realtime_sitemap_version');
delete_option('wp_realtime_sitemap_orderby');
delete_site_option('wp_realtime_sitemap_orderby');
delete_option('wp_realtime_sitemap_private');
delete_site_option('wp_realtime_sitemap_private');
delete_option('wp_realtime_sitemap_pages');
delete_site_option('wp_realtime_sitemap_pages');
delete_option('wp_realtime_sitemap_posts');
delete_site_option('wp_realtime_sitemap_posts');
delete_option('wp_realtime_sitemap_tags');
delete_site_option('wp_realtime_sitemap_tags');
delete_option('wp_realtime_sitemap_archives');
delete_site_option('wp_realtime_sitemap_archives');
delete_option('wp_realtime_sitemap_displayorder');
delete_site_option('wp_realtime_sitemap_displayorder');
delete_option('wp_realtime_sitemap_showprivate');
delete_site_option('wp_realtime_sitemap_showprivate');
delete_option('wp_realtime_sitemap_showpages');
delete_site_option('wp_realtime_sitemap_showpages');
delete_option('wp_realtime_sitemap_showposts');
delete_site_option('wp_realtime_sitemap_showposts');
delete_option('wp_realtime_sitemap_showarchives');
delete_site_option('wp_realtime_sitemap_showarchives');
delete_option('wp_realtime_sitemap_showcategories');
delete_site_option('wp_realtime_sitemap_showcategories');
delete_option('wp_realtime_sitemap_showcategoriesastc');
delete_site_option('wp_realtime_sitemap_showcategoriesastc');
delete_option('wp_realtime_sitemap_showtags');
delete_site_option('wp_realtime_sitemap_showtags');
delete_option('wp_realtime_sitemap_showtagsastc');
delete_site_option('wp_realtime_sitemap_showtagsastc');

