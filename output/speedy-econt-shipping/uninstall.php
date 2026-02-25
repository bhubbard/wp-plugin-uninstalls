<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('speedy_econt_shipping_option_name');
delete_site_option('speedy_econt_shipping_option_name');
delete_option('sesh_db_version');
delete_site_option('sesh_db_version');

// Delete Transients
delete_transient('sesh_upgrade_running');
delete_site_transient('sesh_upgrade_running');

// Clear Cron Jobs
wp_clear_scheduled_hook('seshForceUpdateHook');
wp_clear_scheduled_hook('seshDailyDbHook');
wp_clear_scheduled_hook('seshEcontUpdateDbHook');
wp_clear_scheduled_hook('seshSpeedyEcontUpdateDbHook');

