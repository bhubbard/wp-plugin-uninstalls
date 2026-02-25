<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sg_email_marketing_initial_activation');
delete_site_option('sg_email_marketing_initial_activation');
delete_option('sg_email_marketing_version');
delete_site_option('sg_email_marketing_version');
delete_option('sg_email_marketing_update_timestamp');
delete_site_option('sg_email_marketing_update_timestamp');
delete_option('sg_email_marketing_token');
delete_site_option('sg_email_marketing_token');
delete_option('sg_email_marketing_seen');
delete_site_option('sg_email_marketing_seen');
delete_option('sg_email_marketing_token_status');
delete_site_option('sg_email_marketing_token_status');

// Delete Transients
delete_transient('_sg_email_marketing_installing');
delete_site_transient('_sg_email_marketing_installing');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_process_lock', '_site_transient_%_process_lock' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sg_email_marketing_user_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sg_email_marketing_user_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sg_email_marketing_user_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sg_email_marketing_user_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sg_email_marketing_groups' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sg_email_marketing_groups' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sg_email_marketing_groups' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sg_email_marketing_groups' ) );

