<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wordproof_oauth');
delete_site_option('wordproof_oauth');
delete_option('wordproof_wsfy');
delete_site_option('wordproof_wsfy');
delete_option('wordproof_hide_certificate_home');
delete_site_option('wordproof_hide_certificate_home');
delete_option('wordproof_certificate_text');
delete_site_option('wordproof_certificate_text');
delete_option('wordproof_settings');
delete_site_option('wordproof_settings');
delete_option('wpseo');
delete_site_option('wpseo');
delete_option('wordproof_migration_200_completed');
delete_site_option('wordproof_migration_200_completed');

// Delete Transients
delete_transient('action_scheduler_last_pastdue_actions_check');
delete_site_transient('action_scheduler_last_pastdue_actions_check');
delete_transient('action_scheduler_admin_notice');
delete_site_transient('action_scheduler_admin_notice');
delete_transient('as_comment_count');
delete_site_transient('as_comment_count');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wordproof_last_timestamped_on' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wordproof_last_timestamped_on' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wordproof_last_timestamped_on' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wordproof_last_timestamped_on' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wordproof_timestamp_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wordproof_timestamp_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wordproof_timestamp_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wordproof_timestamp_data' ) );

