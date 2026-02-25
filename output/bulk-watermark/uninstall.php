<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bulk-watermark-settings');
delete_site_option('bulk-watermark-settings');
delete_option('mywebsiteadvisor_pluigin_installer_menu_disable');
delete_site_option('mywebsiteadvisor_pluigin_installer_menu_disable');
delete_option('watermark_on');
delete_site_option('watermark_on');
delete_option('watermark_type');
delete_site_option('watermark_type');
delete_option('watermark_text');
delete_site_option('watermark_text');
delete_option('watermark_image');
delete_site_option('watermark_image');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wporg_favorites' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wporg_favorites' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wporg_favorites' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wporg_favorites' ) );

