<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('stcw_pending_assets');
delete_site_option('stcw_pending_assets');
delete_option('stcw_downloaded_assets');
delete_site_option('stcw_downloaded_assets');
delete_option('stcw_enabled');
delete_site_option('stcw_enabled');

// Clear Cron Jobs
wp_clear_scheduled_hook('stcw_process_assets');

