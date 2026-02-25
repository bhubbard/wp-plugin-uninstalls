<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('logo_img');
delete_site_option('logo_img');
delete_option('desktop_width');
delete_site_option('desktop_width');
delete_option('desktop_height');
delete_site_option('desktop_height');
delete_option('tablet_wigth');
delete_site_option('tablet_wigth');
delete_option('tablet_heigth');
delete_site_option('tablet_heigth');
delete_option('mobile_width');
delete_site_option('mobile_width');
delete_option('mobile_heigth');
delete_site_option('mobile_heigth');
delete_option('tablet_width');
delete_site_option('tablet_width');
delete_option('wpspf_toolbar_color');
delete_site_option('wpspf_toolbar_color');
delete_option('wpspf_bg_color');
delete_site_option('wpspf_bg_color');
delete_option('wpspf_title_color');
delete_site_option('wpspf_title_color');
delete_option('wpspf_border_color');
delete_site_option('wpspf_border_color');
delete_option('wpspf_row_item');
delete_site_option('wpspf_row_item');
delete_option('tablet_heidht');
delete_site_option('tablet_heidht');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sites_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sites_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sites_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sites_url' ) );

