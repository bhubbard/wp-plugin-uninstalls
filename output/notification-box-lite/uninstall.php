<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('danw_first_time_notifcation');
delete_site_option('danw_first_time_notifcation');
delete_option('danw_time_notifcation');
delete_site_option('danw_time_notifcation');
delete_option('danw_day_notification');
delete_site_option('danw_day_notification');
delete_option('danw_duration_notification');
delete_site_option('danw_duration_notification');
delete_option('danw_text_notifcation_view');
delete_site_option('danw_text_notifcation_view');
delete_option('danw_show_powered_by');
delete_site_option('danw_show_powered_by');
delete_option('danw_display_notification');
delete_site_option('danw_display_notification');
delete_option('danw_viewed_post');
delete_site_option('danw_viewed_post');
delete_option('danw_viewed_page');
delete_site_option('danw_viewed_page');
delete_option('danw_text_notifcation_purchase');
delete_site_option('danw_text_notifcation_purchase');
delete_option('danw_viewed_product');
delete_site_option('danw_viewed_product');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%count_viewed_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%count_viewed_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%count_viewed_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%count_viewed_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%time_viewed_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%time_viewed_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%time_viewed_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%time_viewed_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%count_viewed_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%count_viewed_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%count_viewed_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%count_viewed_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%time_viewed_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%time_viewed_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%time_viewed_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%time_viewed_page' ) );

