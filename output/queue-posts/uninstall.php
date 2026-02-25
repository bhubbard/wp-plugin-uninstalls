<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('queue_posts_time_from');
delete_site_option('queue_posts_time_from');
delete_option('queue_posts_time_to');
delete_site_option('queue_posts_time_to');
delete_option('queue_posts_minimum_interval');
delete_site_option('queue_posts_minimum_interval');
delete_option('queue_posts_minimum_interval_type');
delete_site_option('queue_posts_minimum_interval_type');
delete_option('queue_posts_last_queued');
delete_site_option('queue_posts_last_queued');

