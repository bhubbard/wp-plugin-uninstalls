<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpes_evernote_common_token');
delete_site_option('wpes_evernote_common_token');
delete_option('wpes_evernote_udpated_status');
delete_site_option('wpes_evernote_udpated_status');
delete_option('wpes_evernote_update_suspend');
delete_site_option('wpes_evernote_update_suspend');
delete_option('wpes_evernote_update_action_interval');
delete_site_option('wpes_evernote_update_action_interval');
delete_option('wpes_evernote_notebook_on');
delete_site_option('wpes_evernote_notebook_on');
delete_option('wpes_evernote_notebook_key');
delete_site_option('wpes_evernote_notebook_key');
delete_option('wpes_evernote_exclude_tags');
delete_site_option('wpes_evernote_exclude_tags');
delete_option('wpes_update_time');
delete_site_option('wpes_update_time');
delete_option('wpes_common_and_user_tokens');
delete_site_option('wpes_common_and_user_tokens');

// Clear Cron Jobs
wp_clear_scheduled_hook('wpes_evernote_update');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpes_user_evernote_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpes_user_evernote_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpes_user_evernote_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpes_user_evernote_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wpes_evernote_guid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wpes_evernote_guid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wpes_evernote_guid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wpes_evernote_guid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wpes_evernote_last_updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wpes_evernote_last_updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wpes_evernote_last_updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wpes_evernote_last_updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wpes_evernote_uploaded_images' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wpes_evernote_uploaded_images' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wpes_evernote_uploaded_images' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wpes_evernote_uploaded_images' ) );

