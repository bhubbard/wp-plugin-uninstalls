<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('magicblog_features');
delete_site_option('magicblog_features');
delete_option('magicblog_settings');
delete_site_option('magicblog_settings');
delete_option('magicblog_query_monitor');
delete_site_option('magicblog_query_monitor');
delete_option('magicblog_widgets');
delete_site_option('magicblog_widgets');
delete_option('magicblog_version');
delete_site_option('magicblog_version');
delete_option('magicblog_resolved_conflicts');
delete_site_option('magicblog_resolved_conflicts');
delete_option('magicblog_compatibility_issues');
delete_site_option('magicblog_compatibility_issues');
delete_option('magicblog_theme_compatibility_checked');
delete_site_option('magicblog_theme_compatibility_checked');
delete_option('magicblog_theme_test_results');
delete_site_option('magicblog_theme_test_results');

// Clear Cron Jobs
wp_clear_scheduled_hook('magicblog_update_stats');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'magicblog_subheader_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'magicblog_subheader_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'magicblog_subheader_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'magicblog_subheader_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'magicblog_elementor_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'magicblog_elementor_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'magicblog_elementor_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'magicblog_elementor_notice_dismissed' ) );

