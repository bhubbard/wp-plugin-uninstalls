<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rao_firebase_user_credentials');
delete_site_option('rao_firebase_user_credentials');
delete_option('rao_chat_admin_display_name');
delete_site_option('rao_chat_admin_display_name');
delete_option('rao_chat_admin');
delete_site_option('rao_chat_admin');
delete_option('rao_chat_frontend_status');
delete_site_option('rao_chat_frontend_status');
delete_option('raopress_chat_admin_pro_license');
delete_site_option('raopress_chat_admin_pro_license');
delete_option('raopress_chat_admin_pro_status');
delete_site_option('raopress_chat_admin_pro_status');
delete_option('firebase-chat-settings');
delete_site_option('firebase-chat-settings');

// Delete Transients
delete_transient('rao_auth_error');
delete_site_transient('rao_auth_error');
delete_transient('rao_firebase_global_error');
delete_site_transient('rao_firebase_global_error');
delete_transient('rao_login_error');
delete_site_transient('rao_login_error');
delete_transient('raopress_chat_pro_notice_display');
delete_site_transient('raopress_chat_pro_notice_display');
delete_transient('rao_firebase_app_config_error');
delete_site_transient('rao_firebase_app_config_error');
delete_transient('rao_firebase_db_config_error');
delete_site_transient('rao_firebase_db_config_error');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'chat_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'chat_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'chat_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'chat_id' ) );

