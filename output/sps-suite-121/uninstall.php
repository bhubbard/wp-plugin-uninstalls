<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sps_sidebar_page_switcher');
delete_site_option('sps_sidebar_page_switcher');
delete_option('sps_hierarchical_display');
delete_site_option('sps_hierarchical_display');
delete_option('sps_trim_breaks');
delete_site_option('sps_trim_breaks');
delete_option('sps_minimum_user_level');
delete_site_option('sps_minimum_user_level');
delete_option('sps_search_static_pages');
delete_site_option('sps_search_static_pages');
delete_option('sps_standard_separator');
delete_site_option('sps_standard_separator');
delete_option('sps_list_archives');
delete_site_option('sps_list_archives');
delete_option('sps_date_prefix');
delete_site_option('sps_date_prefix');
delete_option('sps_widget_archives');
delete_site_option('sps_widget_archives');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sps_show_in_sidebar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sps_show_in_sidebar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sps_show_in_sidebar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sps_show_in_sidebar' ) );

