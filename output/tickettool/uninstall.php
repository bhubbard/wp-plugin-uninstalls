<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_ticketool_blank');
delete_site_option('wp_ticketool_blank');
delete_option('wp_ticketool_expired');
delete_site_option('wp_ticketool_expired');
delete_option('wp_ticketool_key');
delete_site_option('wp_ticketool_key');
delete_option('wp_ticketool_thumbnail');
delete_site_option('wp_ticketool_thumbnail');
delete_option('wp_ticketool_thumbnail_width');
delete_site_option('wp_ticketool_thumbnail_width');
delete_option('wp_ticketool_iframe');
delete_site_option('wp_ticketool_iframe');
delete_option('wp_ticketool_iframe_width');
delete_site_option('wp_ticketool_iframe_width');
delete_option('wp_ticketool_iframe_height');
delete_site_option('wp_ticketool_iframe_height');
delete_option('wp_ticketool_map');
delete_site_option('wp_ticketool_map');
delete_option('wp_ticketool_map_width');
delete_site_option('wp_ticketool_map_width');
delete_option('wp_ticketool_map_height');
delete_site_option('wp_ticketool_map_height');
delete_option('wp_ticketool_cat');
delete_site_option('wp_ticketool_cat');
delete_option('wp_ticketool_button_title');
delete_site_option('wp_ticketool_button_title');
delete_option('wp_ticketool_lang');
delete_site_option('wp_ticketool_lang');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'tickettool_event_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'tickettool_event_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'tickettool_event_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'tickettool_event_id' ) );

