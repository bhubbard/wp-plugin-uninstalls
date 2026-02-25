<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_ada_compliance_basic_posttypes');
delete_site_option('wp_ada_compliance_basic_posttypes');
delete_option('wp_ada_compliance_basic_import_inprocess');
delete_site_option('wp_ada_compliance_basic_import_inprocess');
delete_option('wp_ada_compliance_basic_enablewave');
delete_site_option('wp_ada_compliance_basic_enablewave');
delete_option('wp_ada_compliance_basic_retain_settings');
delete_site_option('wp_ada_compliance_basic_retain_settings');
delete_option('wp_ada_compliance_basic_scan_rules');
delete_site_option('wp_ada_compliance_basic_scan_rules');
delete_option('wp_ada_compliance_basic_ignore_scan_rules');
delete_site_option('wp_ada_compliance_basic_ignore_scan_rules');
delete_option('wp_ada_compliance_basic_version');
delete_site_option('wp_ada_compliance_basic_version');
delete_option('wp_ada_compliance_basic_rescan_required');
delete_site_option('wp_ada_compliance_basic_rescan_required');
delete_option('wp_ada_compliance_basic_settingsusers');
delete_site_option('wp_ada_compliance_basic_settingsusers');
delete_option('wp_ada_compliance_basic_report_filtered_errors');
delete_site_option('wp_ada_compliance_basic_report_filtered_errors');
delete_option('wp_ada_compliance_errors_per_page');
delete_site_option('wp_ada_compliance_errors_per_page');
delete_option('wp_ada_compliance_basic_cron_count');
delete_site_option('wp_ada_compliance_basic_cron_count');
delete_option('wp_ada_compliance_basic_notification_frequency');
delete_site_option('wp_ada_compliance_basic_notification_frequency');
delete_option('wp_ada_compliance_strip_autoplay');
delete_site_option('wp_ada_compliance_strip_autoplay');
delete_option('wp_ada_compliance_basic_background_color');
delete_site_option('wp_ada_compliance_basic_background_color');
delete_option('wp_ada_compliance_basic_forground_color');
delete_site_option('wp_ada_compliance_basic_forground_color');
delete_option('wp_ada_compliance_basic_attachmenttitles');
delete_site_option('wp_ada_compliance_basic_attachmenttitles');
delete_option('wp_ada_compliance_basic_starting_h_level');
delete_site_option('wp_ada_compliance_basic_starting_h_level');
delete_option('wp_ada_compliance_basic_foreground_color');
delete_site_option('wp_ada_compliance_basic_foreground_color');
delete_option('wp_ada_compliance_basic_notification_email');
delete_site_option('wp_ada_compliance_basic_notification_email');
delete_option('wp_ada_compliance_basic_filter_content');
delete_site_option('wp_ada_compliance_basic_filter_content');
delete_option('wp_ada_compliance_basic_full_scan_post_count');
delete_site_option('wp_ada_compliance_basic_full_scan_post_count');
delete_option('wp_ada_compliance_basic_use_accessibility_widget');
delete_site_option('wp_ada_compliance_basic_use_accessibility_widget');
delete_option('wp_ada_compliance_basic_use_browser_extension');
delete_site_option('wp_ada_compliance_basic_use_browser_extension');
delete_option('wp_ada_compliance_basic_errors_per_page');
delete_site_option('wp_ada_compliance_basic_errors_per_page');
delete_option('wp_ada_compliance_basic_language_code');
delete_site_option('wp_ada_compliance_basic_language_code');
delete_option('wp_ada_compliance_basic_scan_increment');
delete_site_option('wp_ada_compliance_basic_scan_increment');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attached_file' ) );

