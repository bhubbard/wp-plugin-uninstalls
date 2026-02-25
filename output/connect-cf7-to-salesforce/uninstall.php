<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'CF7SF_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('CF7SF_auth_data');
delete_site_option('CF7SF_auth_data');
delete_option('CF7SF_instance_url');
delete_site_option('CF7SF_instance_url');
delete_option('CF7SF_consumer_key');
delete_site_option('CF7SF_consumer_key');
delete_option('CF7SF_consumer_secret');
delete_site_option('CF7SF_consumer_secret');
delete_option('CF7SF_callback_url');
delete_site_option('CF7SF_callback_url');
delete_option('CF7SF_lead');
delete_site_option('CF7SF_lead');
delete_option('cfhs_notification_send_to');
delete_site_option('cfhs_notification_send_to');
delete_option('cfhs_notification_subject');
delete_site_option('cfhs_notification_subject');
delete_option('CF7SF_token');
delete_site_option('CF7SF_token');
delete_option('CF7SF_refresh_token');
delete_site_option('CF7SF_refresh_token');
delete_option('CF7SF_token_time');
delete_site_option('CF7SF_token_time');
delete_option('CF7SF_sandbox');
delete_site_option('CF7SF_sandbox');
delete_option('CF7SF_notification_subject');
delete_site_option('CF7SF_notification_subject');
delete_option('CF7SF_notification_send_to');
delete_site_option('CF7SF_notification_send_to');
delete_option('CF7SF_uninstall');
delete_site_option('CF7SF_uninstall');
delete_option('CF7SF_state');
delete_site_option('CF7SF_state');
delete_option('CF7SF_access_token');
delete_site_option('CF7SF_access_token');
delete_option('CF7SF_persons');
delete_site_option('CF7SF_persons');
delete_option('CF7SF_organizations');
delete_site_option('CF7SF_organizations');
delete_option('CF7SF_notes');
delete_site_option('CF7SF_notes');
delete_option('CF7SF_file');
delete_site_option('CF7SF_file');
delete_option('CF7SF_marketing_status');
delete_site_option('CF7SF_marketing_status');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_form' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_form' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_form' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_form' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'CF7SF_active' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'CF7SF_active' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'CF7SF_active' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'CF7SF_active' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'CF7SF_update_lead' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'CF7SF_update_lead' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'CF7SF_update_lead' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'CF7SF_update_lead' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'CF7SF_fields' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'CF7SF_fields' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'CF7SF_fields' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'CF7SF_fields' ) );

