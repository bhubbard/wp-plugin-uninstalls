<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('acl_wooacd_custom_request');
delete_site_option('acl_wooacd_custom_request');
delete_option('acl_wooacd_traveller');
delete_site_option('acl_wooacd_traveller');
delete_option('acl_wooacd_estimated_delivery_time');
delete_site_option('acl_wooacd_estimated_delivery_time');
delete_option('acl_wooacd_menus');
delete_site_option('acl_wooacd_menus');
delete_option('acl_wooacd_enable_notifications');
delete_site_option('acl_wooacd_enable_notifications');
delete_option('acl_wooacd_set_estimated_delivery_time');
delete_site_option('acl_wooacd_set_estimated_delivery_time');
delete_option('acl_wooacd_price_breakdown');
delete_site_option('acl_wooacd_price_breakdown');
delete_option('acl_wooacd_note_placeholder');
delete_site_option('acl_wooacd_note_placeholder');
delete_option('acl_wooacd_phrase');
delete_site_option('acl_wooacd_phrase');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wooacd_cost_breakdown' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wooacd_cost_breakdown' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wooacd_cost_breakdown' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wooacd_cost_breakdown' ) );

