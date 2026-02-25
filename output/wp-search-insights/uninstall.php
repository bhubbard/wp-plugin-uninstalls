<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpsi_select_dashboard_capability');
delete_site_option('wpsi_select_dashboard_capability');
delete_option('wpsi_select_term_deletion_period');
delete_site_option('wpsi_select_term_deletion_period');
delete_option('wpsi-current-version');
delete_site_option('wpsi-current-version');
delete_option('wpsi_version_two_installation_time');
delete_site_option('wpsi_version_two_installation_time');
delete_option('wpsi_checked_ajax_plugins');
delete_site_option('wpsi_checked_ajax_plugins');
delete_option('wpsi_track_ajax_searches');
delete_site_option('wpsi_track_ajax_searches');
delete_option('wpsi_activation_time');
delete_site_option('wpsi_activation_time');
delete_option('wpsi_exclude_admin');
delete_site_option('wpsi_exclude_admin');
delete_option('wpsi_min_term_length');
delete_site_option('wpsi_min_term_length');
delete_option('wpsi_max_term_length');
delete_site_option('wpsi_max_term_length');
delete_option('wpsi_custom_search_parameter');
delete_site_option('wpsi_custom_search_parameter');
delete_option('wpsi_filter_textarea');
delete_site_option('wpsi_filter_textarea');
delete_option('wpsi_cleardatabase');
delete_site_option('wpsi_cleardatabase');
delete_option('wpsi_export_row_count');
delete_site_option('wpsi_export_row_count');
delete_option('wpsi_export_progress');
delete_site_option('wpsi_export_progress');
delete_option('wpsi_file_name');
delete_site_option('wpsi_file_name');
delete_option('wpsi_database_created');
delete_site_option('wpsi_database_created');
delete_option('wpsi_review_notice_shown');
delete_site_option('wpsi_review_notice_shown');
delete_option('wpsi_spam_filter_stats');
delete_site_option('wpsi_spam_filter_stats');
delete_option('wpsi_toolset_configured');
delete_site_option('wpsi_toolset_configured');
delete_option('wpsi_tour_cancelled');
delete_site_option('wpsi_tour_cancelled');
delete_option('wpsi_database_postids_upgrade_completed');
delete_site_option('wpsi_database_postids_upgrade_completed');
delete_option('search_insights_db_version');
delete_site_option('search_insights_db_version');

// Delete Transients
delete_transient('wpsi_export_in_progress');
delete_site_transient('wpsi_export_in_progress');
delete_transient('wpsi_popular_searches');
delete_site_transient('wpsi_popular_searches');
delete_transient('wpsi_top_searches');
delete_site_transient('wpsi_top_searches');
delete_transient('wpsi_top_searches_week');
delete_site_transient('wpsi_top_searches_week');
delete_transient('wpsi_popular_searches_week');
delete_site_transient('wpsi_popular_searches_week');
delete_transient('wpsi_plus_ones');
delete_site_transient('wpsi_plus_ones');
delete_transient('wpsi_range_start');
delete_site_transient('wpsi_range_start');
delete_transient('wpsi_range_end');
delete_site_transient('wpsi_range_end');
delete_transient('wpsi_range_type');
delete_site_transient('wpsi_range_type');
delete_transient('wpsi_total_searchcount');
delete_site_transient('wpsi_total_searchcount');

// Clear Cron Jobs
wp_clear_scheduled_hook('wpsi_every_five_minutes_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpsi_popular_filter_preference' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpsi_popular_filter_preference' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpsi_popular_filter_preference' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpsi_popular_filter_preference' ) );

