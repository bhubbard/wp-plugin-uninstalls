<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wptech_redirection_option_show_all');
delete_site_option('wptech_redirection_option_show_all');
delete_option('wptech_redirection_option_on_off');
delete_site_option('wptech_redirection_option_on_off');
delete_option('wptech_hit_counter_option_on_off');
delete_site_option('wptech_hit_counter_option_on_off');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wptech_page_redirection_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wptech_page_redirection_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wptech_page_redirection_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wptech_page_redirection_url' ) );

