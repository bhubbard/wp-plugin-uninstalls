<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ptw_count');
delete_site_option('ptw_count');

// Clear Cron Jobs
wp_clear_scheduled_hook('ptw_cron');

