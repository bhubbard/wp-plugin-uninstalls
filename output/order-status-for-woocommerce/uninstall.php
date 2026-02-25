<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wfwp_wc_order_status_admin_order_actions_processing_override');
delete_site_option('wfwp_wc_order_status_admin_order_actions_processing_override');
delete_option('wfwp_wc_order_status_admin_order_actions_processing_has_status');
delete_site_option('wfwp_wc_order_status_admin_order_actions_processing_has_status');
delete_option('wfwp_wc_order_status_admin_order_actions_complete_override');
delete_site_option('wfwp_wc_order_status_admin_order_actions_complete_override');
delete_option('wfwp_wc_order_status_admin_order_actions_complete_has_status');
delete_site_option('wfwp_wc_order_status_admin_order_actions_complete_has_status');
delete_option('wfwp_wc_order_status_sorting_custom');
delete_site_option('wfwp_wc_order_status_sorting_custom');
delete_option('wfwp_wc_order_status_version');
delete_site_option('wfwp_wc_order_status_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_reset' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_%' ) );

