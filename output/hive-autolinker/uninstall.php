<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hive_autolinker_license_data');
delete_site_option('hive_autolinker_license_data');
delete_option('hive_autolinker_gsc_connection');
delete_site_option('hive_autolinker_gsc_connection');
delete_option('hive_autolinker_gsc_sites');
delete_site_option('hive_autolinker_gsc_sites');
delete_option('hive_autolinker_gsc_selected_site');
delete_site_option('hive_autolinker_gsc_selected_site');
delete_option('hive_autolinker_keywords');
delete_site_option('hive_autolinker_keywords');
delete_option('hive_autolinker_gsc_settings');
delete_site_option('hive_autolinker_gsc_settings');
delete_option('hive_autolinker_settings_general');
delete_site_option('hive_autolinker_settings_general');
delete_option('hive_autolinker_settings_suggestions');
delete_site_option('hive_autolinker_settings_suggestions');
delete_option('hive_autolinker_auto_links');
delete_site_option('hive_autolinker_auto_links');
delete_option('hive_autolinker_link_suggestions');
delete_site_option('hive_autolinker_link_suggestions');
delete_option('hive_autolinker_notified_keywords');
delete_site_option('hive_autolinker_notified_keywords');
delete_option('hive_autolinker_gsc_last_import');
delete_site_option('hive_autolinker_gsc_last_import');
delete_option('hive_autolinker_gsc_keyword_data');
delete_site_option('hive_autolinker_gsc_keyword_data');
delete_option('hive_autolinker_last_full_link_analysis');
delete_site_option('hive_autolinker_last_full_link_analysis');
delete_option('hive_autolinker_popular_link_suggestions');
delete_site_option('hive_autolinker_popular_link_suggestions');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%last_full_link_analysis' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%license_data' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%settings_general' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%settings_suggestions' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%gsc_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('hive_autolinker_license_verified_message');
delete_site_transient('hive_autolinker_license_verified_message');
delete_transient('hive_autolinker_key_phrases_cache');
delete_site_transient('hive_autolinker_key_phrases_cache');
delete_transient('hive_autolinker_cancel_suggestion_generation');
delete_site_transient('hive_autolinker_cancel_suggestion_generation');
delete_transient('hive_autolinker_suggestion_generation_status');
delete_site_transient('hive_autolinker_suggestion_generation_status');
delete_transient('hive_autolinker_temp_suggestions');
delete_site_transient('hive_autolinker_temp_suggestions');
delete_transient('hive_autolinker_link_structure_%');
delete_site_transient('hive_autolinker_link_structure_%');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_hive_autolinker_links_post_%', '_site_transient_hive_autolinker_links_post_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('hive_autolinker_link_discovery_progress');
delete_site_transient('hive_autolinker_link_discovery_progress');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%suggestion_generation_status', '_site_transient_%suggestion_generation_status' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('hive_autolinker_suggestion_applied');
delete_site_transient('hive_autolinker_suggestion_applied');
delete_transient('hive_autolinker_suggestion_ignored');
delete_site_transient('hive_autolinker_suggestion_ignored');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%link_discovery_progress', '_site_transient_%link_discovery_progress' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%license_verified_message', '_site_transient_%license_verified_message' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('hive_autolinker_daily_review_check');
wp_clear_scheduled_hook('hive_autolinker_weekly_gsc_import');
wp_clear_scheduled_hook('hive_autolinker_link_discovery_cron');
wp_clear_scheduled_hook('hive_autolinker_process_link_analysis_batch');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_hive_autolinker_links_analyzed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_hive_autolinker_links_analyzed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_hive_autolinker_links_analyzed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_hive_autolinker_links_analyzed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_hive_autolinker_discovered_links' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_hive_autolinker_discovered_links' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_hive_autolinker_discovered_links' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_hive_autolinker_discovered_links' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_hive_autolinker_previous_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_hive_autolinker_previous_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_hive_autolinker_previous_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_hive_autolinker_previous_content' ) );

