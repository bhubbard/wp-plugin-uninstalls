<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpspamcommtotal_val');
delete_site_option('wpspamcommtotal_val');
delete_option('wpspamcommscheduled_val');
delete_site_option('wpspamcommscheduled_val');
delete_option('wpspamcommhours_val');
delete_site_option('wpspamcommhours_val');

// Clear Cron Jobs
wp_clear_scheduled_hook('WPSpamCommentEvent');

