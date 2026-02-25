<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('makcubes_nrp_settings');
delete_site_option('makcubes_nrp_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('makcubes_nrp_weekly_cleanup');

