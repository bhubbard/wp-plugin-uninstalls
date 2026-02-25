<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('path_pilot_goal_pages');
delete_site_option('path_pilot_goal_pages');
delete_option('path_pilot_conversion_pages');
delete_site_option('path_pilot_conversion_pages');
delete_option('path_pilot_min_hops');
delete_site_option('path_pilot_min_hops');
delete_option('path_pilot_ignored_user_roles');
delete_site_option('path_pilot_ignored_user_roles');
delete_option('path_pilot_insights_only');
delete_site_option('path_pilot_insights_only');
delete_option('path_pilot_ready');
delete_site_option('path_pilot_ready');
delete_option('path_pilot_path_stats');
delete_site_option('path_pilot_path_stats');
delete_option('path_pilot_activation_date');
delete_site_option('path_pilot_activation_date');
delete_option('path_pilot_cta_text');
delete_site_option('path_pilot_cta_text');
delete_option('path_pilot_recommend_label');
delete_site_option('path_pilot_recommend_label');
delete_option('path_pilot_dev_mode');
delete_site_option('path_pilot_dev_mode');
delete_option('path_pilot_chat_label');
delete_site_option('path_pilot_chat_label');
delete_option('path_pilot_allowed_content_types');
delete_site_option('path_pilot_allowed_content_types');
delete_option('path_pilot_do_activation_redirect');
delete_site_option('path_pilot_do_activation_redirect');

// Clear Cron Jobs
wp_clear_scheduled_hook('path_pilot_analyze_paths');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'path_pilot_setup_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'path_pilot_setup_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'path_pilot_setup_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'path_pilot_setup_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'path_pilot_synopsis' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'path_pilot_synopsis' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'path_pilot_synopsis' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'path_pilot_synopsis' ) );

