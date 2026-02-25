<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tplp_popular_posts');
delete_site_option('tplp_popular_posts');
delete_option('tplp_latest_posts');
delete_site_option('tplp_latest_posts');
delete_option('tplp_popular_title');
delete_site_option('tplp_popular_title');
delete_option('tplp_latest_title');
delete_site_option('tplp_latest_title');

