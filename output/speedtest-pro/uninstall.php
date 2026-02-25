<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpspeedtestpro_selected_region');
delete_site_option('wpspeedtestpro_selected_region');
delete_option('wpspeedtestpro_site_key');
delete_site_option('wpspeedtestpro_site_key');
delete_option('wpspeedtestpro_selected_provider');
delete_site_option('wpspeedtestpro_selected_provider');
delete_option('wpspeedtestpro_selected_package');
delete_site_option('wpspeedtestpro_selected_package');
delete_option('wpspeedtestpro_allow_data_collection');
delete_site_option('wpspeedtestpro_allow_data_collection');
delete_option('wpspeedtestpro_latency_info_dismissed');
delete_site_option('wpspeedtestpro_latency_info_dismissed');
delete_option('wpspeedtestpro_continuous_testing');
delete_site_option('wpspeedtestpro_continuous_testing');
delete_option('wpspeedtestpro_start_time');
delete_site_option('wpspeedtestpro_start_time');
delete_option('wpspeedtestpro_pagespeed_api_key');
delete_site_option('wpspeedtestpro_pagespeed_api_key');
delete_option('wpspeedtestpro_serverinfo_info_dismissed');
delete_site_option('wpspeedtestpro_serverinfo_info_dismissed');
delete_option('wpspeedtestpro_continuous_test_status');
delete_site_option('wpspeedtestpro_continuous_test_status');
delete_option('wpspeedtestpro_continuous_test_start_time');
delete_site_option('wpspeedtestpro_continuous_test_start_time');
delete_option('wpspeedtestpro_performance_test_status');
delete_site_option('wpspeedtestpro_performance_test_status');
delete_option('wpspeedtestpro_performance_info_dismissed');
delete_site_option('wpspeedtestpro_performance_info_dismissed');
delete_option('wpspeedtestpro_performance_test_results');
delete_site_option('wpspeedtestpro_performance_test_results');
delete_option('wp_hosting_benchmarking_selected_region');
delete_site_option('wp_hosting_benchmarking_selected_region');
delete_option('wpspeedtestpro_user_country');
delete_site_option('wpspeedtestpro_user_country');
delete_option('wpspeedtestpro_options');
delete_site_option('wpspeedtestpro_options');
delete_option('wpspeedtestpro_uptimerobot_api_key');
delete_site_option('wpspeedtestpro_uptimerobot_api_key');
delete_option('wpspeedtestpro_user_ssl_email');
delete_site_option('wpspeedtestpro_user_ssl_email');
delete_option('wpspeedtestpro_ssl_info_dismissed');
delete_site_option('wpspeedtestpro_ssl_info_dismissed');
delete_option('wpspeedtestpro_uptimerobot_ping_id');
delete_site_option('wpspeedtestpro_uptimerobot_ping_id');
delete_option('wpspeedtestpro_uptimerobot_cron_id');
delete_site_option('wpspeedtestpro_uptimerobot_cron_id');
delete_option('wpspeedtestpro_uptime_info_dismissed');
delete_site_option('wpspeedtestpro_uptime_info_dismissed');
delete_option('wpspeedtestpro_ping_filename');
delete_site_option('wpspeedtestpro_ping_filename');
delete_option('wpspeedtestpro_setup_completed');
delete_site_option('wpspeedtestpro_setup_completed');
delete_option('wpspeedtestpro_selected_provider_id');
delete_site_option('wpspeedtestpro_selected_provider_id');
delete_option('wpspeedtestpro_selected_package_id');
delete_site_option('wpspeedtestpro_selected_package_id');
delete_option('wpspeedtestpro_pagespeed_settings');
delete_site_option('wpspeedtestpro_pagespeed_settings');

// Delete Transients
delete_transient('wpspeedtestpro_ssl_results');
delete_site_transient('wpspeedtestpro_ssl_results');
delete_transient('wpspeedtestpro_advertisers');
delete_site_transient('wpspeedtestpro_advertisers');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wpspeedtestpro_pagespeed_test_%', '_site_transient_wpspeedtestpro_pagespeed_test_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wpspeedtestpro_pagespeed_scheduled_test_%', '_site_transient_wpspeedtestpro_pagespeed_scheduled_test_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wpspeedtestpro_pagespeed_test_result_%', '_site_transient_wpspeedtestpro_pagespeed_test_result_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('wpspeedtestpro_sync_data');
wp_clear_scheduled_hook('wpspeedtestpro_hourly_test');
wp_clear_scheduled_hook('wpspeedtestpro_cron_hook');
wp_clear_scheduled_hook('wpspeedtestpro_continuous_test');
wp_clear_scheduled_hook('wpspeedtestpro_check_scheduled_pagespeed_tests');
wp_clear_scheduled_hook('wpspeedtestpro_pagespeed_run_scheduled_tests');
wp_clear_scheduled_hook('wpspeedtestpro_daily_pagespeed_check');
wp_clear_scheduled_hook('wpspeedtestpro_pagespeed_check_scheduled_tests');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_pagespeed_test_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_pagespeed_test_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_pagespeed_test_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_pagespeed_test_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_pagespeed_test_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_pagespeed_test_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_pagespeed_test_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_pagespeed_test_url' ) );

