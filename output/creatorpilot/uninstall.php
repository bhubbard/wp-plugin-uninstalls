<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('Creator_Pilot_Session');
delete_site_option('Creator_Pilot_Session');
delete_option('Creator_Pilot_Job_Id');
delete_site_option('Creator_Pilot_Job_Id');
delete_option('Creator_Pilot_License');
delete_site_option('Creator_Pilot_License');
delete_option('Creator_Pilot_Error_Message');
delete_site_option('Creator_Pilot_Error_Message');
delete_option('Creator_Pilot_Error_Code');
delete_site_option('Creator_Pilot_Error_Code');
delete_option('Creator_Pilot_Status');
delete_site_option('Creator_Pilot_Status');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

