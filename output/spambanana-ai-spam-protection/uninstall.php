<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('spambanana_settings');
delete_site_option('spambanana_settings');
delete_option('spambanana_version');
delete_site_option('spambanana_version');
delete_option('comment_previously_approved');
delete_site_option('comment_previously_approved');

// Delete Transients
delete_transient('spambanana_activation_redirect');
delete_site_transient('spambanana_activation_redirect');

// Clear Cron Jobs
wp_clear_scheduled_hook('spambanana_cleanup_logs');
wp_clear_scheduled_hook('spambanana_auto_delete_spam');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'spambanana_score' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'spambanana_score' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'spambanana_score' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'spambanana_score' ) );

