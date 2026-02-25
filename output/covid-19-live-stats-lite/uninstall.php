<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('covid19livestats_settings');
delete_site_option('covid19livestats_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('covid19livestats_update');

