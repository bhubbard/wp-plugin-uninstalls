<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('Cf7zh_grand_token');
delete_site_option('Cf7zh_grand_token');
delete_option('Cf7zh_accounts_server');
delete_site_option('Cf7zh_accounts_server');
delete_option('Cf7zh_client_id');
delete_site_option('Cf7zh_client_id');
delete_option('Cf7zh_client_secret');
delete_site_option('Cf7zh_client_secret');
delete_option('Cf7zh_access_token_stored_flag');
delete_site_option('Cf7zh_access_token_stored_flag');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'Cf7zh_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('Cf7zh_leads');
delete_site_option('Cf7zh_leads');
delete_option('cfhs_notification_send_to');
delete_site_option('cfhs_notification_send_to');
delete_option('cfhs_notification_subject');
delete_site_option('cfhs_notification_subject');
delete_option('Cf7zh_current_user_email');
delete_site_option('Cf7zh_current_user_email');
delete_option('Cf7zh_notification_subject');
delete_site_option('Cf7zh_notification_subject');
delete_option('Cf7zh_notification_send_to');
delete_site_option('Cf7zh_notification_send_to');
delete_option('Cf7zh_uninstall');
delete_site_option('Cf7zh_uninstall');
delete_option('Cf7zh_access_token');
delete_site_option('Cf7zh_access_token');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_form' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_form' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_form' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_form' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'Cf7zh_active' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'Cf7zh_active' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'Cf7zh_active' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'Cf7zh_active' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'Cf7zh_update_person' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'Cf7zh_update_person' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'Cf7zh_update_person' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'Cf7zh_update_person' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'Cf7zh_update_org' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'Cf7zh_update_org' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'Cf7zh_update_org' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'Cf7zh_update_org' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'Cf7zh_fields' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'Cf7zh_fields' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'Cf7zh_fields' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'Cf7zh_fields' ) );

