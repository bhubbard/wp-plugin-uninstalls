<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Clear Cron Jobs
wp_clear_scheduled_hook('cron_reeview_create');
wp_clear_scheduled_hook('cron_reeview_update');
wp_clear_scheduled_hook('cron_reeview_delete');

