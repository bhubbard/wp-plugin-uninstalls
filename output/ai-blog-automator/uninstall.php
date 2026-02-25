<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bluteem_aba_settings');
delete_site_option('bluteem_aba_settings');
delete_option('bluteem_aba_posts_count');
delete_site_option('bluteem_aba_posts_count');
delete_option('bluteem_aba_errors');
delete_site_option('bluteem_aba_errors');
delete_option('bluteem_aba_recent_keywords');
delete_site_option('bluteem_aba_recent_keywords');

// Clear Cron Jobs
wp_clear_scheduled_hook('bluteem_aba_generate_post');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_bluteem_aba_generated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_bluteem_aba_generated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_bluteem_aba_generated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_bluteem_aba_generated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_bluteem_aba_timestamp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_bluteem_aba_timestamp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_bluteem_aba_timestamp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_bluteem_aba_timestamp' ) );

