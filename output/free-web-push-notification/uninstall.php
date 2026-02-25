<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('FWPN_secret_key');
delete_site_option('FWPN_secret_key');
delete_option('FWPN_server_url');
delete_site_option('FWPN_server_url');
delete_option('fwpn_db_version');
delete_site_option('fwpn_db_version');
delete_option('apiKey');
delete_site_option('apiKey');
delete_option('authDomain');
delete_site_option('authDomain');
delete_option('databaseURL');
delete_site_option('databaseURL');
delete_option('projectId');
delete_site_option('projectId');
delete_option('storageBucket');
delete_site_option('storageBucket');
delete_option('messagingSenderId');
delete_site_option('messagingSenderId');
delete_option('eww_epush');
delete_site_option('eww_epush');
delete_option('subscriber');
delete_site_option('subscriber');
delete_option('default_post');
delete_site_option('default_post');
delete_option('subscriber_api');
delete_site_option('subscriber_api');
delete_option('Serverkey');
delete_site_option('Serverkey');
delete_option('Notify_Title');
delete_site_option('Notify_Title');
delete_option('Notify_logo');
delete_site_option('Notify_logo');
delete_option('Notify_Thanks');
delete_site_option('Notify_Thanks');
delete_option('Notify_Description');
delete_site_option('Notify_Description');
delete_option('groupkey');
delete_site_option('groupkey');
delete_option('groupname');
delete_site_option('groupname');
delete_option('post_list');
delete_site_option('post_list');
delete_option('sample_license_key');
delete_site_option('sample_license_key');
delete_option('Custom_Notify_Title');
delete_site_option('Custom_Notify_Title');
delete_option('Custom_Notify_Body');
delete_site_option('Custom_Notify_Body');
delete_option('Custom_Notify_Link');
delete_site_option('Custom_Notify_Link');
delete_option('Custom_Notify_logo');
delete_site_option('Custom_Notify_logo');
delete_option('push_deactivated_on');
delete_site_option('push_deactivated_on');
delete_option('push_activated_on');
delete_site_option('push_activated_on');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'do_not_send_push_notifications_for_this_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'do_not_send_push_notifications_for_this_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'do_not_send_push_notifications_for_this_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'do_not_send_push_notifications_for_this_post' ) );

