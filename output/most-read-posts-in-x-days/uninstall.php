<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('most_read_days_number');
delete_site_option('most_read_days_number');
delete_option('most_read_post_number');
delete_site_option('most_read_post_number');
delete_option('most_read_show_read_counter');
delete_site_option('most_read_show_read_counter');

// Delete Transients
delete_transient('most_read_posts');
delete_site_transient('most_read_posts');

