<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('custom_post_type_widget_blocks_calendar_has_published_posts');
delete_site_option('custom_post_type_widget_blocks_calendar_has_published_posts');
delete_option('post_count');
delete_site_option('post_count');

