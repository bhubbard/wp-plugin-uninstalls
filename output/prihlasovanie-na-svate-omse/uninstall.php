<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tsspsv_options');
delete_site_option('tsspsv_options');
delete_option('tsspsv_db_version');
delete_site_option('tsspsv_db_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('tsspsv_reset_forms');

