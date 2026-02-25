<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_random_blogdescription');
delete_site_option('wp_random_blogdescription');
delete_option('wp_random_blogdescription_timing');
delete_site_option('wp_random_blogdescription_timing');
delete_option('wp_random_blogdescription_last');
delete_site_option('wp_random_blogdescription_last');

