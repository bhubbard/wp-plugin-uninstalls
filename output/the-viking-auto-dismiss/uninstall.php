<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('viking_auto_dismiss_site_id');
delete_site_option('viking_auto_dismiss_site_id');
delete_option('viking_auto_dismiss_enabled');
delete_site_option('viking_auto_dismiss_enabled');
delete_option('viking_auto_dismiss_review_dismissed');
delete_site_option('viking_auto_dismiss_review_dismissed');
delete_option('viking_auto_dismiss_review_submitted');
delete_site_option('viking_auto_dismiss_review_submitted');
delete_option('viking_auto_dismiss_review_next_show');
delete_site_option('viking_auto_dismiss_review_next_show');
delete_option('viking_auto_dismiss_review_maybe_later_count');
delete_site_option('viking_auto_dismiss_review_maybe_later_count');
delete_option('viking_auto_dismiss_disable_welcome');
delete_site_option('viking_auto_dismiss_disable_welcome');
delete_option('viking_auto_dismiss_review_last_shown');
delete_site_option('viking_auto_dismiss_review_last_shown');

// Clear Cron Jobs
wp_clear_scheduled_hook('viking_auto_dismiss_heartbeat');

