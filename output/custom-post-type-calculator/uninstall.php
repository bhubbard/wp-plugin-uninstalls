<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('item_admin_email');
delete_site_option('item_admin_email');
delete_option('item_surface_label');
delete_site_option('item_surface_label');
delete_option('item_measurement_label');
delete_site_option('item_measurement_label');
delete_option('item_calculate_button_label');
delete_site_option('item_calculate_button_label');
delete_option('item_result_label');
delete_site_option('item_result_label');
delete_option('item_contact_section_title');
delete_site_option('item_contact_section_title');
delete_option('item_contact_button_label');
delete_site_option('item_contact_button_label');
delete_option('item_currency');
delete_site_option('item_currency');
delete_option('item_show_quote');
delete_site_option('item_show_quote');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'item_value' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'item_value' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'item_value' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'item_value' ) );

