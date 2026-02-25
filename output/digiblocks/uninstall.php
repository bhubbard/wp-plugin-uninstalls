<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('digiblocks_settings');
delete_site_option('digiblocks_settings');
delete_option('digiblocks_fonts_data');
delete_site_option('digiblocks_fonts_data');
delete_option('digiblocks_activation_timestamp');
delete_site_option('digiblocks_activation_timestamp');
delete_option('digiblocks_review_notice_dismissed');
delete_site_option('digiblocks_review_notice_dismissed');
delete_option('digiblocks_inactive_blocks');
delete_site_option('digiblocks_inactive_blocks');

// Delete Transients
delete_transient('digiblocks_review_notice_dismissed_temporarily');
delete_site_transient('digiblocks_review_notice_dismissed_temporarily');
delete_transient('digiblocks_active_builders');
delete_site_transient('digiblocks_active_builders');
delete_transient('digiblocks_activation_redirect');
delete_site_transient('digiblocks_activation_redirect');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

