<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_easy_google_analytics_options');
delete_site_option('wp_easy_google_analytics_options');
delete_option('wp_easy_analytics_options');
delete_site_option('wp_easy_analytics_options');

