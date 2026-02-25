<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('efav_options');
delete_site_option('efav_options');
delete_option('efav_multi_posts_options');
delete_site_option('efav_multi_posts_options');

