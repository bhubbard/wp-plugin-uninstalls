<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mcnb_basic_options');
delete_site_option('mcnb_basic_options');
delete_option('mcnb_basic_last_settings_update');
delete_site_option('mcnb_basic_last_settings_update');
delete_option('mcnb_db_version');
delete_site_option('mcnb_db_version');
delete_option('mcnb_realtime_stats');
delete_site_option('mcnb_realtime_stats');
delete_option('mcnb_security_logs');
delete_site_option('mcnb_security_logs');
delete_option('mcnb_options');
delete_site_option('mcnb_options');
delete_option('mcnb_basic_migrated');
delete_site_option('mcnb_basic_migrated');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'mcnb_last_save' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'mcnb_last_save' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'mcnb_last_save' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'mcnb_last_save' ) );

