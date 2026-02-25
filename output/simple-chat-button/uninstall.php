<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('scb_button_status');
delete_site_option('scb_button_status');
delete_option('scb_whatsapp_number');
delete_site_option('scb_whatsapp_number');
delete_option('scb_whatsapp_chat_text');
delete_site_option('scb_whatsapp_chat_text');
delete_option('scb_button_text');
delete_site_option('scb_button_text');
delete_option('scb_button_target');
delete_site_option('scb_button_target');
delete_option('scb_button_position');
delete_site_option('scb_button_position');
delete_option('scb_button_z_index');
delete_site_option('scb_button_z_index');
delete_option('scb_desktop_link_type');
delete_site_option('scb_desktop_link_type');
delete_option('scb_desktop_bottom_margin');
delete_site_option('scb_desktop_bottom_margin');
delete_option('scb_tablet_bottom_margin');
delete_site_option('scb_tablet_bottom_margin');
delete_option('scb_mobile_bottom_margin');
delete_site_option('scb_mobile_bottom_margin');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_scb_button_hide_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_scb_button_hide_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_scb_button_hide_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_scb_button_hide_status' ) );

