<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_buddydrive_user_quota');
delete_site_option('_buddydrive_user_quota');
delete_option('_buddydrive_version');
delete_site_option('_buddydrive_version');
delete_option('_buddydrive_max_upload');
delete_site_option('_buddydrive_max_upload');
delete_option('_buddydrive_allowed_extensions');
delete_site_option('_buddydrive_allowed_extensions');

// Delete Transients
delete_transient('_buddydrive_is_new_install');
delete_site_transient('_buddydrive_is_new_install');
delete_transient('_buddydrive_activation_redirect');
delete_site_transient('_buddydrive_activation_redirect');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_buddydrive_sharing_option' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_buddydrive_sharing_option' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_buddydrive_sharing_option' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_buddydrive_sharing_option' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_buddydrive_total_space' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_buddydrive_total_space' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_buddydrive_total_space' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_buddydrive_total_space' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_buddydrive_sharing_groups' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_buddydrive_sharing_groups' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_buddydrive_sharing_groups' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_buddydrive_sharing_groups' ) );

