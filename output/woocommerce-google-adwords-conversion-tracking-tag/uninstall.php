<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wgact_plugin_options');
delete_site_option('wgact_plugin_options');
delete_option('GTranslate');
delete_site_option('GTranslate');
delete_option('nitropack-siteId');
delete_site_option('nitropack-siteId');
delete_option('nitropack-siteSecret');
delete_site_option('nitropack-siteSecret');
delete_option('wp_rocket_settings');
delete_site_option('wp_rocket_settings');
delete_option('wgact_plugin_options_1');
delete_site_option('wgact_plugin_options_1');
delete_option('wgact_plugin_options_2');
delete_site_option('wgact_plugin_options_2');
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('_transient_timeout_fs_snooze_period');
delete_site_option('_transient_timeout_fs_snooze_period');
delete_option('_site_transient_timeout_fs_snooze_period');
delete_site_option('_site_transient_timeout_fs_snooze_period');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');

// Delete Transients
delete_transient('pmw_tracking_accuracy_analysis');
delete_site_transient('pmw_tracking_accuracy_analysis');
delete_transient('pmw_tracking_accuracy_analysis_date');
delete_site_transient('pmw_tracking_accuracy_analysis_date');
delete_transient('pmw_tracking_accuracy_analysis_time');
delete_site_transient('pmw_tracking_accuracy_analysis_time');
delete_transient('pmw_tracking_accuracy_analysis_running');
delete_site_transient('pmw_tracking_accuracy_analysis_running');
delete_transient('pmw_tracking_accuracy_analysis_max_orders');
delete_site_transient('pmw_tracking_accuracy_analysis_max_orders');
delete_transient('pmw_tracking_accuracy_analysis_weighted');
delete_site_transient('pmw_tracking_accuracy_analysis_weighted');
delete_transient('pmw_tracked_payment_methods');
delete_site_transient('pmw_tracked_payment_methods');
delete_transient('pmw_google_tag_id');
delete_site_transient('pmw_google_tag_id');
delete_transient('pmw_test_transient');
delete_site_transient('pmw_test_transient');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_geoip_%', '_site_transient_geoip_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('_pmw_pro_version_demo_active');
delete_site_transient('_pmw_pro_version_demo_active');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_pmw_products_for_datalayer_%', '_site_transient_pmw_products_for_datalayer_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');
delete_transient('action_scheduler_last_pastdue_actions_check');
delete_site_transient('action_scheduler_last_pastdue_actions_check');
delete_transient('action_scheduler_admin_notice');
delete_site_transient('action_scheduler_admin_notice');
delete_transient('as_comment_count');
delete_site_transient('as_comment_count');

// Clear Cron Jobs
wp_clear_scheduled_hook('pmw_tracking_accuracy_analysis');
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

