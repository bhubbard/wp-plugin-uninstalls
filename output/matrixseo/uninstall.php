<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mx_total_act');
delete_site_option('mx_total_act');

// Clear Cron Jobs
wp_clear_scheduled_hook('matrixseocronjob');
wp_clear_scheduled_hook('matrixseostopwords');

