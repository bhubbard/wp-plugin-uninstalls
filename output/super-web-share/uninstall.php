<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('superwebshare_version');
delete_site_option('superwebshare_version');
delete_option('superwebshare_settings');
delete_site_option('superwebshare_settings');
delete_option('superwebshare_floatingsettings');
delete_site_option('superwebshare_floatingsettings');
delete_option('superwebshare_floating_settings');
delete_site_option('superwebshare_floating_settings');
delete_option('superwebshare_inline_settings');
delete_site_option('superwebshare_inline_settings');
delete_option('superwebshare_fallback_settings');
delete_site_option('superwebshare_fallback_settings');
delete_option('superwebshare_appearance_settings');
delete_site_option('superwebshare_appearance_settings');

// Delete Transients
delete_transient('superwebshare_admin_notice_activation');
delete_site_transient('superwebshare_admin_notice_activation');
delete_transient('superwebshare_admin_notice_upgrade_complete');
delete_site_transient('superwebshare_admin_notice_upgrade_complete');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_superwebshare_post_inline_active' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_superwebshare_post_inline_active' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_superwebshare_post_inline_active' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_superwebshare_post_inline_active' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_superwebshare_post_floating_active' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_superwebshare_post_floating_active' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_superwebshare_post_floating_active' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_superwebshare_post_floating_active' ) );

