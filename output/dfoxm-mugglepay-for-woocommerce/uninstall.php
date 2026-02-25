<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('test message');
delete_site_option('test message');
delete_option('$raw_response');
delete_site_option('$raw_response');

// Clear Cron Jobs
wp_clear_scheduled_hook('mpwp_check_orders');

