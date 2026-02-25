<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpchtmlp_opt_remove_table_on_uninstall');
delete_site_option('wpchtmlp_opt_remove_table_on_uninstall');
delete_option('wpchtmlp_opt_editor_type');
delete_site_option('wpchtmlp_opt_editor_type');
delete_option('wpchtmlp_opt_editor_style');
delete_site_option('wpchtmlp_opt_editor_style');
delete_option('wpchtmlp_opt_allow_wp-admin');
delete_site_option('wpchtmlp_opt_allow_wp-admin');
delete_option('wpchtmlp_opt_filter_params');
delete_site_option('wpchtmlp_opt_filter_params');
delete_option('wpchtmlp_ignore_trailing_slash');
delete_site_option('wpchtmlp_ignore_trailing_slash');
delete_option('WPCHTMLP_activity_log_version');
delete_site_option('WPCHTMLP_activity_log_version');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'WPCHTMLP_page_meta_box' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'WPCHTMLP_page_meta_box' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'WPCHTMLP_page_meta_box' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'WPCHTMLP_page_meta_box' ) );

