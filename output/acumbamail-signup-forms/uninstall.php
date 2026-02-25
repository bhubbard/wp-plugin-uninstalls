<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('acumbamail_options');
delete_site_option('acumbamail_options');
delete_option('custom_user_logged_in');
delete_site_option('custom_user_logged_in');
delete_option('acumba_widget_fields');
delete_site_option('acumba_widget_fields');
delete_option('acumba_chosen_list');
delete_site_option('acumba_chosen_list');
delete_option('acumba_ordered_fields');
delete_site_option('acumba_ordered_fields');
delete_option('theme_style');
delete_site_option('theme_style');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'acumba_subscribe' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'acumba_subscribe' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'acumba_subscribe' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'acumba_subscribe' ) );

