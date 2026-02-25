<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gravity_to_solve360_debug_mode');
delete_site_option('gravity_to_solve360_debug_mode');
delete_option('gravity_to_solve360_user');
delete_site_option('gravity_to_solve360_user');
delete_option('gravity_to_solve360_token');
delete_site_option('gravity_to_solve360_token');
delete_option('gravity_to_solve360_debug_start_date');
delete_site_option('gravity_to_solve360_debug_start_date');
delete_option('gravity_to_solve360_last_export_date');
delete_site_option('gravity_to_solve360_last_export_date');
delete_option('gravity_to_solve360_to');
delete_site_option('gravity_to_solve360_to');
delete_option('gravity_to_solve360_from');
delete_site_option('gravity_to_solve360_from');
delete_option('gravity_to_solve360_cc');
delete_site_option('gravity_to_solve360_cc');
delete_option('gravity_to_solve360_bcc');
delete_site_option('gravity_to_solve360_bcc');

// Clear Cron Jobs
wp_clear_scheduled_hook('gravity_to_solve360_cron');

