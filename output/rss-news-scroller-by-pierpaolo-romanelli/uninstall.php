<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('npr_news_items');
delete_site_option('npr_news_items');
delete_option('npr_rss_url');
delete_site_option('npr_rss_url');
delete_option('npr_speed');
delete_site_option('npr_speed');
delete_option('npr_pause');
delete_site_option('npr_pause');
delete_option('npr_direction');
delete_site_option('npr_direction');
delete_option('npr_autoplay');
delete_site_option('npr_autoplay');
delete_option('npr_opacity');
delete_site_option('npr_opacity');
delete_option('npr_full3D');
delete_site_option('npr_full3D');
delete_option('npr_title');
delete_site_option('npr_title');
delete_option('npr_rss_title');
delete_site_option('npr_rss_title');

