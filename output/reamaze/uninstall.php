<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('reamaze_account_id');
delete_site_option('reamaze_account_id');
delete_option('reamaze_version');
delete_site_option('reamaze_version');
delete_option('reamaze_account_sso_key');
delete_site_option('reamaze_account_sso_key');
delete_option('reamaze_widget_display');
delete_site_option('reamaze_widget_display');
delete_option('reamaze_widget_code');
delete_site_option('reamaze_widget_code');
delete_option('reamaze_cue_code');
delete_site_option('reamaze_cue_code');
delete_option('reamaze_post_reamaze-kb');
delete_site_option('reamaze_post_reamaze-kb');
delete_option('reamaze_post_reamaze-support');
delete_site_option('reamaze_post_reamaze-support');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'reamaze-conversation' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'reamaze-conversation' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'reamaze-conversation' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'reamaze-conversation' ) );

