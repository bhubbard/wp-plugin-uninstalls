<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('review_days_after_order');
delete_site_option('review_days_after_order');
delete_option('review_review_link');
delete_site_option('review_review_link');

// Clear Cron Jobs
wp_clear_scheduled_hook('review_request_send_email');

