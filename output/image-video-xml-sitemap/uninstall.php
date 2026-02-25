<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ivxs_enable_image_sitemap');
delete_site_option('ivxs_enable_image_sitemap');
delete_option('ivxs_image_sitemap_filename');
delete_site_option('ivxs_image_sitemap_filename');
delete_option('ivxs_enable_video_sitemap');
delete_site_option('ivxs_enable_video_sitemap');
delete_option('ivxs_video_sitemap_filename');
delete_site_option('ivxs_video_sitemap_filename');

