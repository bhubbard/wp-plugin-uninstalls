<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('SFI_NIRUS_PNG_SITE_LOGO_PATH');
delete_site_option('SFI_NIRUS_PNG_SITE_LOGO_PATH');
delete_option('SFI_NIRUS_PNG_FOLDER_PATH');
delete_site_option('SFI_NIRUS_PNG_FOLDER_PATH');
delete_option('SFI_NIRUS_TWT_OPTION');
delete_site_option('SFI_NIRUS_TWT_OPTION');
delete_option('SFI_NIRUS_FB_OPTION');
delete_site_option('SFI_NIRUS_FB_OPTION');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sfi-nirus-featured-png' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sfi-nirus-featured-png' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sfi-nirus-featured-png' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sfi-nirus-featured-png' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sfi-nirus-image-hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sfi-nirus-image-hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sfi-nirus-image-hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sfi-nirus-image-hash' ) );

