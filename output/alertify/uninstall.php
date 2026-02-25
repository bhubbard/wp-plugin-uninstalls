<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('alertify_options');
delete_site_option('alertify_options');

// Clear Cron Jobs
wp_clear_scheduled_hook('alertify_send_notifications');

