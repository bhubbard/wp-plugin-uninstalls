<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tmip_lc_first_activation');
delete_site_option('tmip_lc_first_activation');
delete_option('tmip_lc_enable_unfiltered_stats');
delete_site_option('tmip_lc_enable_unfiltered_stats');
delete_option('tmip_lc_enable_daily_chart');
delete_site_option('tmip_lc_enable_daily_chart');
delete_option('tmip_lc_enable_top_posts');
delete_site_option('tmip_lc_enable_top_posts');
delete_option('tmip_lc_enable_top_pages');
delete_site_option('tmip_lc_enable_top_pages');
delete_option('tmip_lc_enable_recent_views');
delete_site_option('tmip_lc_enable_recent_views');
delete_option('tmip_lc_date_format');
delete_site_option('tmip_lc_date_format');
delete_option('tmip_lc_time_format');
delete_site_option('tmip_lc_time_format');
delete_option('tmip_lc_charts_retention');
delete_site_option('tmip_lc_charts_retention');
delete_option('tmip_lc_recent_views_minutes');
delete_site_option('tmip_lc_recent_views_minutes');
delete_option('tmip_lc_chart_display_mode');
delete_site_option('tmip_lc_chart_display_mode');
delete_option('tmip_lc_chart_series_display');
delete_site_option('tmip_lc_chart_series_display');
delete_option('tmip_lc_storage_method');
delete_site_option('tmip_lc_storage_method');
delete_option('tmip_lc_top_posts_count');
delete_site_option('tmip_lc_top_posts_count');
delete_option('tmip_lc_top_pages_count');
delete_site_option('tmip_lc_top_pages_count');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'tmip_lc_enable_cpt_dashboard_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'tmip_lc_top_count_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('tmip_lc_enable_active_ips');
delete_site_option('tmip_lc_enable_active_ips');
delete_option('tmip_lc_active_ips_limit');
delete_site_option('tmip_lc_active_ips_limit');
delete_option('tmip_lc_ip_lookup_service');
delete_site_option('tmip_lc_ip_lookup_service');
delete_option('tmip_lc_active_ips_timeframe');
delete_site_option('tmip_lc_active_ips_timeframe');
delete_option('tmip_lc_dashboard_stats_order');
delete_site_option('tmip_lc_dashboard_stats_order');
delete_option('tmip_lc_column_position');
delete_site_option('tmip_lc_column_position');
delete_option('tmip_lc_timezone_setting');
delete_site_option('tmip_lc_timezone_setting');
delete_option('tmip_lc_custom_timezone');
delete_site_option('tmip_lc_custom_timezone');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'tmip_lc_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('tmip_lc_stats_retention');
delete_site_option('tmip_lc_stats_retention');
delete_option('tmip_lc_ip_data_retention');
delete_site_option('tmip_lc_ip_data_retention');
delete_option('tmip_lc_enable_posts_column');
delete_site_option('tmip_lc_enable_posts_column');
delete_option('tmip_lc_enable_pages_column');
delete_site_option('tmip_lc_enable_pages_column');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'tmip_lc_enable_cpt_column_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('tmip_lc_count_interval');
delete_site_option('tmip_lc_count_interval');
delete_option('tmip_lc_count_interval_unit');
delete_site_option('tmip_lc_count_interval_unit');
delete_option('tmip_lc_exclude_groups');
delete_site_option('tmip_lc_exclude_groups');
delete_option('tmip_lc_exclude_ips');
delete_site_option('tmip_lc_exclude_ips');
delete_option('tmip_lc_total_logged_views');
delete_site_option('tmip_lc_total_logged_views');

// Delete Transients
delete_transient('tmip_admin_notice');
delete_site_transient('tmip_admin_notice');
delete_transient('tmip_show_activation_cache_notice');
delete_site_transient('tmip_show_activation_cache_notice');
delete_transient('tmip_show_upgrade_cache_notice');
delete_site_transient('tmip_show_upgrade_cache_notice');

// Clear Cron Jobs
wp_clear_scheduled_hook('tmip_lc_daily_cleanup');
wp_clear_scheduled_hook('tmip_lc_hourly_aggregate');

