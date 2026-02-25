<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vdcw_do_activation_redirect');
delete_site_option('vdcw_do_activation_redirect');

// Delete Transients
delete_transient('vdcw_cache');
delete_site_transient('vdcw_cache');

// Clear Cron Jobs
wp_clear_scheduled_hook('vdcw_daily_cleanup');

