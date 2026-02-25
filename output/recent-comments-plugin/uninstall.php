<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('recent-comments');
delete_site_option('recent-comments');
delete_option('widget_rrm_recent_comments');
delete_site_option('widget_rrm_recent_comments');
delete_option('recent-posts');
delete_site_option('recent-posts');

