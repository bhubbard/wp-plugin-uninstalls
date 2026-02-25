<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fps_post_types');
delete_site_option('fps_post_types');
delete_option('fps_post_statuses');
delete_site_option('fps_post_statuses');
delete_option('fps_min_cap');
delete_site_option('fps_min_cap');

