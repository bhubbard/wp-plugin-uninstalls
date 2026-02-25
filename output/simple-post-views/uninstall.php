<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('spvc_show_views_after_content');
delete_site_option('spvc_show_views_after_content');
delete_option('spvc_show_views_before_content');
delete_site_option('spvc_show_views_before_content');

