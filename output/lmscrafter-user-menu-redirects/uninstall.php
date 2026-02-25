<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lmsc_rsum_options');
delete_site_option('lmsc_rsum_options');
delete_option('lmsc_rsum_installed_time');
delete_site_option('lmsc_rsum_installed_time');
delete_option('lmsc_rsum_email_subscribed');
delete_site_option('lmsc_rsum_email_subscribed');
delete_option('lmsc_rsum_subscriber_email');
delete_site_option('lmsc_rsum_subscriber_email');
delete_option('lmsc_rsum_subscription_date');
delete_site_option('lmsc_rsum_subscription_date');
delete_option('lmsc_rsum_activation_time');
delete_site_option('lmsc_rsum_activation_time');
delete_option('rsum_options');
delete_site_option('rsum_options');
delete_option('lmsc_rsum_migrated_from_rsum');
delete_site_option('lmsc_rsum_migrated_from_rsum');
delete_option('llrm');
delete_site_option('llrm');
delete_option('lmsc_rsum_migrated_from_llrm');
delete_site_option('lmsc_rsum_migrated_from_llrm');
delete_option('lmsc_rsum_migration_date');
delete_site_option('lmsc_rsum_migration_date');
delete_option('woocommerce_myaccount_page_id');
delete_site_option('woocommerce_myaccount_page_id');

// Delete Transients
delete_transient('lmsc_rsum_activation_redirect');
delete_site_transient('lmsc_rsum_activation_redirect');
delete_transient('rsum_activation_redirect');
delete_site_transient('rsum_activation_redirect');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'lmsc_rsum_login_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'lmsc_rsum_login_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'lmsc_rsum_login_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'lmsc_rsum_login_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'lmsc_rsum_last_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'lmsc_rsum_last_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'lmsc_rsum_last_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'lmsc_rsum_last_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'lmsc_rsum_migrated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'lmsc_rsum_migrated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'lmsc_rsum_migrated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'lmsc_rsum_migrated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'lmsc_rsum_first_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'lmsc_rsum_first_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'lmsc_rsum_first_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'lmsc_rsum_first_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_lmsc_rsum_visibility_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_lmsc_rsum_visibility_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_lmsc_rsum_visibility_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_lmsc_rsum_visibility_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_lmsc_rsum_visibility_roles' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_lmsc_rsum_visibility_roles' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_lmsc_rsum_visibility_roles' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_lmsc_rsum_visibility_roles' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_lmsc_rsum_visibility_memberships' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_lmsc_rsum_visibility_memberships' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_lmsc_rsum_visibility_memberships' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_lmsc_rsum_visibility_memberships' ) );

