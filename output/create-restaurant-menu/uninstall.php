<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('storename');
delete_site_option('storename');
delete_option('menutitlefontsize');
delete_site_option('menutitlefontsize');
delete_option('menuotherfontsize');
delete_site_option('menuotherfontsize');
delete_option('otherbuttonbgcolor');
delete_site_option('otherbuttonbgcolor');
delete_option('currencysymb');
delete_site_option('currencysymb');
delete_option('jquery');
delete_site_option('jquery');
delete_option('allergens');
delete_site_option('allergens');
delete_option('allergensfontsize');
delete_site_option('allergensfontsize');
delete_option('allergensfontcolor');
delete_site_option('allergensfontcolor');
delete_option('bootstrap_minjs');
delete_site_option('bootstrap_minjs');
delete_option('fontawesome_mincss');
delete_site_option('fontawesome_mincss');
delete_option('bootstrap_mincss');
delete_site_option('bootstrap_mincss');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );

