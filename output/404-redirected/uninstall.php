<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wbz404_settings');
delete_site_option('wbz404_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('wbz404_cleanupCronAction');
wp_clear_scheduled_hook('wbz404_duplicateCronAction');

