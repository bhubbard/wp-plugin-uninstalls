<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smfwc_settings');
delete_site_option('smfwc_settings');
delete_option('smfwc_api_key');
delete_site_option('smfwc_api_key');
delete_option('smfwc_privacy_notice_dismissed');
delete_site_option('smfwc_privacy_notice_dismissed');
delete_option('smfwc_large_taxonomy_notice_dismissed');
delete_site_option('smfwc_large_taxonomy_notice_dismissed');

// Delete Transients
delete_transient('smfwc_category_tree');
delete_site_transient('smfwc_category_tree');

// Clear Cron Jobs
wp_clear_scheduled_hook('smfwc_cleanup_old_data');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_smfwc_last_analysis' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_smfwc_last_analysis' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_smfwc_last_analysis' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_smfwc_last_analysis' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'smfwc_large_taxonomy_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'smfwc_large_taxonomy_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'smfwc_large_taxonomy_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'smfwc_large_taxonomy_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'smfwc_notice_dismissed_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'smfwc_notice_dismissed_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'smfwc_notice_dismissed_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'smfwc_notice_dismissed_%' ) );

