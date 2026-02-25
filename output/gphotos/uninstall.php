<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('option1');
delete_site_option('option1');
delete_option('num_album');
delete_site_option('num_album');
delete_option('order_album');
delete_site_option('order_album');
delete_option('check1');
delete_site_option('check1');
delete_option('effect');
delete_site_option('effect');
delete_option('effect_pic');
delete_site_option('effect_pic');
delete_option('background_color');
delete_site_option('background_color');
delete_option('text_color');
delete_site_option('text_color');
delete_option('border_pixel');
delete_site_option('border_pixel');
delete_option('link_color');
delete_site_option('link_color');
delete_option('padding');
delete_site_option('padding');
delete_option('box_shadow_pixel');
delete_site_option('box_shadow_pixel');
delete_option('box_shadow');
delete_site_option('box_shadow');
delete_option('margin_bottom');
delete_site_option('margin_bottom');
delete_option('border_pixel_pic');
delete_site_option('border_pixel_pic');
delete_option('border_rad_pixel_pic');
delete_site_option('border_rad_pixel_pic');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_album' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_album' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_album' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_album' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_comm' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_comm' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_comm' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_comm' ) );

