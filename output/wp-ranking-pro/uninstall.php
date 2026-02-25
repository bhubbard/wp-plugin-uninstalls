<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpr_ranking_cache_expire');
delete_site_option('wpr_ranking_cache_expire');
delete_option('wpr_count_only_visitors');
delete_site_option('wpr_count_only_visitors');
delete_option('wpr_image_type');
delete_site_option('wpr_image_type');
delete_option('wpr_alternative_image');
delete_site_option('wpr_alternative_image');
delete_option('wpr_image_type_custom_field');
delete_site_option('wpr_image_type_custom_field');
delete_option('wpr_current_ranking');
delete_site_option('wpr_current_ranking');
delete_option('wpr_as_mobile_http_user_agent');
delete_site_option('wpr_as_mobile_http_user_agent');
delete_option('wpr_exclusion_remote_addrs');
delete_site_option('wpr_exclusion_remote_addrs');
delete_option('wpr_exclusion_http_referers');
delete_site_option('wpr_exclusion_http_referers');
delete_option('wpr_exclusion_http_user_agent');
delete_site_option('wpr_exclusion_http_user_agent');
delete_option('wpr_cleanlog_cycle');
delete_site_option('wpr_cleanlog_cycle');
delete_option('wpr_cleanlog_time');
delete_site_option('wpr_cleanlog_time');
delete_option('wpr_cleanlog_keep_times');
delete_site_option('wpr_cleanlog_keep_times');
delete_option('wpr_use_ajax_logging');
delete_site_option('wpr_use_ajax_logging');
delete_option('wpr_db_version');
delete_site_option('wpr_db_version');
delete_option('wpr_rebuild_cache');
delete_site_option('wpr_rebuild_cache');
delete_option('wpr_reset_views');
delete_site_option('wpr_reset_views');
delete_option('wpr_remote_addr_key');
delete_site_option('wpr_remote_addr_key');
delete_option('wpr_auto_cleanlog');
delete_site_option('wpr_auto_cleanlog');
delete_option('wpr_dashboard_rankings');
delete_site_option('wpr_dashboard_rankings');
delete_option('wpr_require_authority');
delete_site_option('wpr_require_authority');

// Delete Transients
delete_transient('settings_errors');
delete_site_transient('settings_errors');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wpr-%', '_site_transient_wpr-%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('wpr_scheduled_cleanlog');
wp_clear_scheduled_hook('wpr_scheduled_cron');

