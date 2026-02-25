<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('iaff_settings');
delete_site_option('iaff_settings');
delete_option('iaff_bulk_updater_counter');
delete_site_option('iaff_bulk_updater_counter');
delete_option('abl_iaff_version');
delete_site_option('abl_iaff_version');

// Delete Transients
delete_transient('iaff_activate_image_attributes_pro_plugin_complete');
delete_site_transient('iaff_activate_image_attributes_pro_plugin_complete');
delete_transient('iaff_activation_admin_notice');
delete_site_transient('iaff_activation_admin_notice');
delete_transient('iaff_upgrade_complete_admin_notice');
delete_site_transient('iaff_upgrade_complete_admin_notice');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'iaff_wp_attachment_original_post_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'iaff_wp_attachment_original_post_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'iaff_wp_attachment_original_post_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'iaff_wp_attachment_original_post_title' ) );

