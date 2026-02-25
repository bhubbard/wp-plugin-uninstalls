<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('concise_counter_of_post_views_enabled');
delete_site_option('concise_counter_of_post_views_enabled');

