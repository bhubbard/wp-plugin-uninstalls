<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('et_pb_builder_options');
delete_site_option('et_pb_builder_options');

// Clear Cron Jobs
wp_clear_scheduled_hook('gdpr_cache_worker');
wp_clear_scheduled_hook('gdpr_cache_scan_front');
wp_clear_scheduled_hook('gdpr_cache_check_staleness');

