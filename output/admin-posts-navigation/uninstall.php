<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('twf_admin_posts_navigation_activated');
delete_site_option('twf_admin_posts_navigation_activated');

