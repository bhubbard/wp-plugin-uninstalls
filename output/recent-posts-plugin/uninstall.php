<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('recent-posts');
delete_site_option('recent-posts');
delete_option('widget_rrm_recent_posts');
delete_site_option('widget_rrm_recent_posts');

