<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sale_twitter_timeline_username');
delete_site_option('sale_twitter_timeline_username');
delete_option('sale_twitter_timeline_items');
delete_site_option('sale_twitter_timeline_items');
delete_option('sale_twitter_timeline_title');
delete_site_option('sale_twitter_timeline_title');

