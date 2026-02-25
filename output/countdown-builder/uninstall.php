<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ycd_redirect');
delete_site_option('ycd_redirect');
delete_option('ycd-user-roles');
delete_site_option('ycd-user-roles');
delete_option('ycd-delete-data');
delete_site_option('ycd-delete-data');
delete_option('ycd-hide-coming-soon-menu');
delete_site_option('ycd-hide-coming-soon-menu');
delete_option('ycd-print-scripts-to-page');
delete_site_option('ycd-print-scripts-to-page');
delete_option('ycd-hide-editor-media-button');
delete_site_option('ycd-hide-editor-media-button');
delete_option('ycd-disable-google-fonts');
delete_site_option('ycd-disable-google-fonts');
delete_option('YcdShowNextTime');
delete_site_option('YcdShowNextTime');
delete_option('YcdUsageDays');
delete_site_option('YcdUsageDays');
delete_option('YcdDontShowReviewNotice');
delete_site_option('YcdDontShowReviewNotice');
delete_option('YcdInserted');
delete_site_option('YcdInserted');
delete_option('ycdComingSoonSettings');
delete_site_option('ycdComingSoonSettings');
delete_option('woocommerce_cart_expires');
delete_site_option('woocommerce_cart_expires');
delete_option('YcdInstallDate');
delete_site_option('YcdInstallDate');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ycd_enable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ycd_enable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ycd_enable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ycd_enable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ycd_options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ycd_options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ycd_options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ycd_options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ycd-display-settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ycd-display-settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ycd-display-settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ycd-display-settings' ) );

