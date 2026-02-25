<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fca_ga');
delete_site_option('fca_ga');
delete_option('fca_ga_show_review_notice');
delete_site_option('fca_ga_show_review_notice');
delete_option('fca_ga_show_ga4_notice');
delete_site_option('fca_ga_show_ga4_notice');

// Clear Cron Jobs
wp_clear_scheduled_hook('fca_ga_schedule_review_notice');
wp_clear_scheduled_hook('fca_ga_schedule_ga4_notice');

