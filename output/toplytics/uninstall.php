<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('toplytics_oauth_token');
delete_site_option('toplytics_oauth_token');
delete_option('toplytics_oauth_secret');
delete_site_option('toplytics_oauth_secret');
delete_option('toplytics_auth_token');
delete_site_option('toplytics_auth_token');
delete_option('toplytics_account_id');
delete_site_option('toplytics_account_id');
delete_option('toplytics_cache_timeout');
delete_site_option('toplytics_cache_timeout');
delete_option('toplytics_results');
delete_site_option('toplytics_results');
delete_option('toplytics_result_today');
delete_site_option('toplytics_result_today');
delete_option('toplytics_result_week');
delete_site_option('toplytics_result_week');
delete_option('toplytics_result_month');
delete_site_option('toplytics_result_month');
delete_option('toplytics_auth_status');
delete_site_option('toplytics_auth_status');
delete_option('toplytics_last_update');
delete_site_option('toplytics_last_update');
delete_option('toplytics_settings');
delete_site_option('toplytics_settings');
delete_option('toplytics_use_ga4');
delete_site_option('toplytics_use_ga4');
delete_option('toplytics_gapi_errors_count');
delete_site_option('toplytics_gapi_errors_count');
delete_option('toplytics_db_version');
delete_site_option('toplytics_db_version');
delete_option('toplytics_db_updates_applied');
delete_site_option('toplytics_db_updates_applied');
delete_option('toplytics_results_ranges');
delete_site_option('toplytics_results_ranges');
delete_option('widget_toplytics-widget');
delete_site_option('widget_toplytics-widget');
delete_option('toplytics_private_auth_config');
delete_site_option('toplytics_private_auth_config');
delete_option('toplytics_google_token');
delete_site_option('toplytics_google_token');
delete_option('toplytics_profile_data');
delete_site_option('toplytics_profile_data');
delete_option('toplytics_property_id');
delete_site_option('toplytics_property_id');
delete_option('toplytics_auth_config');
delete_site_option('toplytics_auth_config');
delete_option('toplytics_auth_code');
delete_site_option('toplytics_auth_code');
delete_option('toplytics_last_update_status');
delete_site_option('toplytics_last_update_status');
delete_option('toplytics_result_realtime');
delete_site_option('toplytics_result_realtime');
delete_option('toplytics_result_categories');
delete_site_option('toplytics_result_categories');
delete_option('toplytics_result_top_posts');
delete_site_option('toplytics_result_top_posts');
delete_option('toplytics_auth_type');
delete_site_option('toplytics_auth_type');
delete_option('toplytics_oauth2_remote_token');
delete_site_option('toplytics_oauth2_remote_token');
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');

// Delete Transients
delete_transient('toplyticsMessage');
delete_site_transient('toplyticsMessage');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_message_%', '_site_transient_message_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('toplytics_cron_event');

