<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wfv_setting_allow_direct_access');
delete_site_option('wfv_setting_allow_direct_access');
delete_option('wfv_db_version');
delete_site_option('wfv_db_version');
delete_option('wfv_setting_file_tpl');
delete_site_option('wfv_setting_file_tpl');
delete_option('wfv_setting_file_css');
delete_site_option('wfv_setting_file_css');
delete_option('wfv_post_types');
delete_site_option('wfv_post_types');
delete_option('wfv_setting_allowed_ftypes');
delete_site_option('wfv_setting_allowed_ftypes');
delete_option('wfv_setting_date_format');
delete_site_option('wfv_setting_date_format');
delete_option('wfvIcon');
delete_site_option('wfvIcon');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wfv_files' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wfv_files' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wfv_files' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wfv_files' ) );

