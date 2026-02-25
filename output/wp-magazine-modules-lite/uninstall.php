<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpmagazine_modules_lite_activated_time');
delete_site_option('wpmagazine_modules_lite_activated_time');
delete_option('wpmagazine_modules_lite_upgrade_premium');
delete_site_option('wpmagazine_modules_lite_upgrade_premium');
delete_option('wpmagazine_modules_lite_category_options');
delete_site_option('wpmagazine_modules_lite_category_options');

// Delete Transients
delete_transient('wpmagazine-modules-lite-admin-notice');
delete_site_transient('wpmagazine-modules-lite-admin-notice');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpmagazine_modules_lite_ignore_review_notice_partially' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpmagazine_modules_lite_ignore_review_notice_partially' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpmagazine_modules_lite_ignore_review_notice_partially' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpmagazine_modules_lite_ignore_review_notice_partially' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpmagazine_modules_lite_ignore_theme_review_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpmagazine_modules_lite_ignore_theme_review_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpmagazine_modules_lite_ignore_theme_review_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpmagazine_modules_lite_ignore_theme_review_notice' ) );

