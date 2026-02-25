<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('drag_n_drop_disable_auto_delete');
delete_site_option('drag_n_drop_disable_auto_delete');
delete_option('dndmfu_settings');
delete_site_option('dndmfu_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('dnd_cf7_daily_event');

