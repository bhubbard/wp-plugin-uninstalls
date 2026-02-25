<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cdntr');
delete_site_option('cdntr');
delete_option('cdntr_api_check_status');
delete_site_option('cdntr_api_check_status');
delete_option('cdntr_purge_telemetry');
delete_site_option('cdntr_purge_telemetry');

// Clear Cron Jobs
wp_clear_scheduled_hook('cdntr_run_coalesced_purge');

