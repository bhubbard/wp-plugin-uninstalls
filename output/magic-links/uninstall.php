<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ml_options');
delete_site_option('ml_options');
delete_option('ml_contents');
delete_site_option('ml_contents');
delete_option('ml_widget');
delete_site_option('ml_widget');

// Clear Cron Jobs
wp_clear_scheduled_hook('ml_update_event');

