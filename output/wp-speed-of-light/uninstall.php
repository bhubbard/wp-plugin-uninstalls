<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_jureview_installation_time' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_jufeedback_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_disallow_feedback' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpsol_optimization_settings');
delete_site_option('wpsol_optimization_settings');
delete_option('wpsol_advanced_settings');
delete_site_option('wpsol_advanced_settings');
delete_option('wpsol_db_clean_addon');
delete_site_option('wpsol_db_clean_addon');
delete_option('wpsol_configuration');
delete_site_option('wpsol_configuration');
delete_option('wpsol_cdn_integration');
delete_site_option('wpsol_cdn_integration');
delete_option('wpsol_addon_author_max_cdn');
delete_site_option('wpsol_addon_author_max_cdn');
delete_option('wpsol_addon_author_key_cdn');
delete_site_option('wpsol_addon_author_key_cdn');
delete_option('wpsol_addon_author_cloudflare');
delete_site_option('wpsol_addon_author_cloudflare');
delete_option('wpsol_addon_varnish_ip');
delete_site_option('wpsol_addon_varnish_ip');
delete_option('wpsol_ecommerce_detect');
delete_site_option('wpsol_ecommerce_detect');
delete_option('wpsol_preload_after_saved_setting');
delete_site_option('wpsol_preload_after_saved_setting');
delete_option('wpsol_scan_queries');
delete_site_option('wpsol_scan_queries');
delete_option('wpsol_clean_database_config');
delete_site_option('wpsol_clean_database_config');
delete_option('wpsol_database_cleanup_count_time');
delete_site_option('wpsol_database_cleanup_count_time');
delete_option('wpsol_version');
delete_site_option('wpsol_version');
delete_option('wpsol_db_version');
delete_site_option('wpsol_db_version');
delete_option('ju_user_token');
delete_site_option('ju_user_token');
delete_option('wpsol_exclude_from_defer_css');
delete_site_option('wpsol_exclude_from_defer_css');
delete_option('sccss_settings');
delete_site_option('sccss_settings');
delete_option('wpsol_loadtime_analysis_lastest');
delete_site_option('wpsol_loadtime_analysis_lastest');
delete_option('wpsol_loadtime_analysis_total');
delete_site_option('wpsol_loadtime_analysis_total');
delete_option('wpsol_database_queries_analysis');
delete_site_option('wpsol_database_queries_analysis');
delete_option('wpsol_profiles_option');
delete_site_option('wpsol_profiles_option');
delete_option('wpsol_file_group_activation_popup_settings');
delete_site_option('wpsol_file_group_activation_popup_settings');
delete_option('wpsol_addon_exclude_file_lists');
delete_site_option('wpsol_addon_exclude_file_lists');
delete_option('recently_activated');
delete_site_option('recently_activated');
delete_option('wpsol_woocommerce_speedup');
delete_site_option('wpsol_woocommerce_speedup');

// Clear Cron Jobs
wp_clear_scheduled_hook('wpsol_auto_purge_cache');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpsol_notice_dismissed_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpsol_notice_dismissed_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpsol_notice_dismissed_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpsol_notice_dismissed_time' ) );

