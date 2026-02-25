<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Clear Cron Jobs
wp_clear_scheduled_hook('tmu/cron/fetch_trustmeup_products');
wp_clear_scheduled_hook('tmu/cron/autoconnect_non_connected_products');

