<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('emw_mom_allowed_statuses');
delete_site_option('emw_mom_allowed_statuses');
delete_option('emw_mom_email_subject');
delete_site_option('emw_mom_email_subject');
delete_option('emw_mom_admin_email');
delete_site_option('emw_mom_admin_email');
delete_option('emw_mom_cc_email');
delete_site_option('emw_mom_cc_email');
delete_option('emw_mom_email_template');
delete_site_option('emw_mom_email_template');
delete_option('emw_mom_criteria_settings');
delete_site_option('emw_mom_criteria_settings');
delete_option('emw_mom_rest_api_enabled');
delete_site_option('emw_mom_rest_api_enabled');
delete_option('emw_mom_rest_api_key');
delete_site_option('emw_mom_rest_api_key');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'multipleorders' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'multipleorders' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'multipleorders' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'multipleorders' ) );

