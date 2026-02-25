<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('collect_reviews_initial_version');
delete_site_option('collect_reviews_initial_version');
delete_option('collect_reviews_initial_activation_time');
delete_site_option('collect_reviews_initial_activation_time');
delete_option('collect_reviews_version');
delete_site_option('collect_reviews_version');

