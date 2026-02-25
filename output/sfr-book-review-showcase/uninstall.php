<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sfrbrs_delete_data_on_uninstall');
delete_site_option('sfrbrs_delete_data_on_uninstall');
delete_option('sfrbrs_activation_date');
delete_site_option('sfrbrs_activation_date');
delete_option('sfrbrs_schema_version');
delete_site_option('sfrbrs_schema_version');
delete_option('sfrbrs_settings');
delete_site_option('sfrbrs_settings');
delete_option('sfrbrs_review_view_stats');
delete_site_option('sfrbrs_review_view_stats');
delete_option('sfrbrs_review_click_stats');
delete_site_option('sfrbrs_review_click_stats');

// Clear Cron Jobs
wp_clear_scheduled_hook('sfrbrs_stats_daily_cleanup');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sfrbrs_pro_notice_dismissed_permanent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sfrbrs_pro_notice_dismissed_permanent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sfrbrs_pro_notice_dismissed_permanent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sfrbrs_pro_notice_dismissed_permanent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sfrbrs_pro_notice_dismissed_until' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sfrbrs_pro_notice_dismissed_until' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sfrbrs_pro_notice_dismissed_until' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sfrbrs_pro_notice_dismissed_until' ) );

