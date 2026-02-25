<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mp_voice_2_app_setting_id_email');
delete_site_option('mp_voice_2_app_setting_id_email');
delete_option('mp_voice_2_app_setting_id_password');
delete_site_option('mp_voice_2_app_setting_id_password');
delete_option('mp_server_email_host');
delete_site_option('mp_server_email_host');
delete_option('mp_server_email_username');
delete_site_option('mp_server_email_username');
delete_option('mp_server_email_password');
delete_site_option('mp_server_email_password');
delete_option('mp_server_email_port');
delete_site_option('mp_server_email_port');
delete_option('mpvoice2app');
delete_site_option('mpvoice2app');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'voice2app_narration' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'voice2app_narration' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'voice2app_narration' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'voice2app_narration' ) );

