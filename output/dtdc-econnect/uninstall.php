<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Clear Cron Jobs
wp_clear_scheduled_hook('shipsy_auto_sync_consignments_cron_hook');
wp_clear_scheduled_hook('shipsy_auto_update_consignment_status_cron_hook');

