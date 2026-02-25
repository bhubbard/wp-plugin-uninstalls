<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dynamic_sitemap_exclude_items');
delete_site_option('dynamic_sitemap_exclude_items');
delete_option('dynamic_sitemap_background_color');
delete_site_option('dynamic_sitemap_background_color');
delete_option('dynamic_sitemap_title_color');
delete_site_option('dynamic_sitemap_title_color');

