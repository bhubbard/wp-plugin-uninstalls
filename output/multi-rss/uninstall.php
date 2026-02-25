<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('num_feeds_to_show');
delete_site_option('num_feeds_to_show');
delete_option('direction');
delete_site_option('direction');
delete_option('multiRss_Header');
delete_site_option('multiRss_Header');
delete_option('multiRss_ShowOnMobile');
delete_site_option('multiRss_ShowOnMobile');
delete_option('multi_rss_version');
delete_site_option('multi_rss_version');

