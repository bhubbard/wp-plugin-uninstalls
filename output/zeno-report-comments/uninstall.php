<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zrcmnt_threshold');
delete_site_option('zrcmnt_threshold');
delete_option('zrcmnt_admin_notification');
delete_site_option('zrcmnt_admin_notification');
delete_option('zrcmnt_admin_notification_each');
delete_site_option('zrcmnt_admin_notification_each');
delete_option('zrcmnt_spamcheck');
delete_site_option('zrcmnt_spamcheck');
delete_option('zrcmnt_ipblock_from_reporting');
delete_site_option('zrcmnt_ipblock_from_reporting');
delete_option('disallowed_keys');
delete_site_option('disallowed_keys');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'zrcmnt_reported' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'zrcmnt_reported' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'zrcmnt_reported' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'zrcmnt_reported' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'zrcmnt_moderated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'zrcmnt_moderated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'zrcmnt_moderated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'zrcmnt_moderated' ) );

