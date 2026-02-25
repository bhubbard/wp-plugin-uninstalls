<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_statistics_dismissed_notices');
delete_site_option('wp_statistics_dismissed_notices');
delete_option('akismet_spam_count');
delete_site_option('akismet_spam_count');
delete_option('wp_statistics_plugin_version');
delete_site_option('wp_statistics_plugin_version');
delete_option('wp_statistics_is_fresh');
delete_site_option('wp_statistics_is_fresh');
delete_option('wp_statistics_installation_time');
delete_site_option('wp_statistics_installation_time');
delete_option('wp_statistics_update_page_type');
delete_site_option('wp_statistics_update_page_type');
delete_option('wp_statistics');
delete_site_option('wp_statistics');
delete_option('wp_statistics_privacy_status');
delete_site_option('wp_statistics_privacy_status');
delete_option('wp_statistics_referrals_detail');
delete_site_option('wp_statistics_referrals_detail');
delete_option('wp_statistics_overview_page_ads');
delete_site_option('wp_statistics_overview_page_ads');
delete_option('wp_statistics_users_city');
delete_site_option('wp_statistics_users_city');
delete_option('wp_statistics_activate_addons');
delete_site_option('wp_statistics_activate_addons');
delete_option('wp_statistics_disable_addons');
delete_site_option('wp_statistics_disable_addons');
delete_option('wp_statistics_disable_addons_notice');
delete_site_option('wp_statistics_disable_addons_notice');
delete_option('wp_statistics_check_user_online');
delete_site_option('wp_statistics_check_user_online');
delete_option('wp_statistics_daily_salt');
delete_site_option('wp_statistics_daily_salt');
delete_option('wp_statistics_dismissed_widgets');
delete_site_option('wp_statistics_dismissed_widgets');
delete_option('wp_statistics_jobs');
delete_site_option('wp_statistics_jobs');
delete_option('wp_statistics_user_modals');
delete_site_option('wp_statistics_user_modals');
delete_option('wp_statistics_closed_widgets');
delete_site_option('wp_statistics_closed_widgets');
delete_option('wp_statistics_licenses');
delete_site_option('wp_statistics_licenses');
delete_option('wp_statistics_tracker_js_errors');
delete_site_option('wp_statistics_tracker_js_errors');
delete_option('wp_statistics_db');
delete_site_option('wp_statistics_db');
delete_option('wps_robotlist');
delete_site_option('wps_robotlist');
delete_option('wp_statistics_cipher_key');
delete_site_option('wp_statistics_cipher_key');
delete_option('wp_statistics_hashed_assets');
delete_site_option('wp_statistics_hashed_assets');
delete_option('wp_statistics_marketing_campaigns');
delete_site_option('wp_statistics_marketing_campaigns');
delete_option('wp_statistics_notifications');
delete_site_option('wp_statistics_notifications');

// Delete Transients
delete_transient('wps_top_referring');
delete_site_transient('wps_top_referring');
delete_transient('wps_excluded_hostname_to_ip_cache');
delete_site_transient('wps_excluded_hostname_to_ip_cache');
delete_transient('wps_check_rest_api');
delete_site_transient('wps_check_rest_api');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_process_lock', '_site_transient_%_process_lock' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('wp_statistics_flash_notices');
delete_site_transient('wp_statistics_flash_notices');

// Clear Cron Jobs
wp_clear_scheduled_hook('wp_statistics_dbmaint_hook');
wp_clear_scheduled_hook('wp_statistics_referrals_db_hook');
wp_clear_scheduled_hook('wp_statistics_report_hook');
wp_clear_scheduled_hook('wp_statistics_licenses_hook');
wp_clear_scheduled_hook('wp_statistics_geoip_hook');
wp_clear_scheduled_hook('wp_statistics_dbmaint_visitor_hook');
wp_clear_scheduled_hook('wp_statistics_add_visit_hook');
wp_clear_scheduled_hook('wp_statistics_optimize_table');
wp_clear_scheduled_hook('wp_statistics_daily_cron_hook');
wp_clear_scheduled_hook('wp_statistics_referrerspam_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'session_tokens' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'session_tokens' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'session_tokens' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'session_tokens' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'rank_math_seo_score' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'rank_math_seo_score' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'rank_math_seo_score' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'rank_math_seo_score' ) );

