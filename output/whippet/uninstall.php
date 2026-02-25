<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('whippet_options');
delete_site_option('whippet_options');
delete_option('sgal_tracking_id');
delete_site_option('sgal_tracking_id');
delete_option('sgal_adjusted_bounce_rate');
delete_site_option('sgal_adjusted_bounce_rate');
delete_option('sgal_script_position');
delete_site_option('sgal_script_position');
delete_option('sgal_enqueue_order');
delete_site_option('sgal_enqueue_order');
delete_option('sgal_anonymize_ip');
delete_site_option('sgal_anonymize_ip');
delete_option('sgal_track_admin');
delete_site_option('sgal_track_admin');
delete_option('caos_remove_wp_cron');
delete_site_option('caos_remove_wp_cron');
delete_option('caos_disable_display_features');
delete_site_option('caos_disable_display_features');
delete_option('whippet_Issue_1');
delete_site_option('whippet_Issue_1');
delete_option('whippet_Issue_2');
delete_site_option('whippet_Issue_2');
delete_option('Activated_Plugin');
delete_site_option('Activated_Plugin');
delete_option('whippet_db_version');
delete_site_option('whippet_db_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('update_local_ga');

