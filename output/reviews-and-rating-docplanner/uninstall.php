<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dp_active');
delete_site_option('dp_active');
delete_option('dp_version');
delete_site_option('dp_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('dp_reviews_rating_run');

