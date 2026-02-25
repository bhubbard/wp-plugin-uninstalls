<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('btcl_settings');
delete_site_option('btcl_settings');
delete_option('btcl_string_translation');
delete_site_option('btcl_string_translation');
delete_option('btcl_email_templates');
delete_site_option('btcl_email_templates');
delete_option('btcl_sms_templates');
delete_site_option('btcl_sms_templates');
delete_option('btcl_email_settings');
delete_site_option('btcl_email_settings');
delete_option('wprsmp_settings_data');
delete_site_option('wprsmp_settings_data');
delete_option('clockify_dashboard');
delete_site_option('clockify_dashboard');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );

