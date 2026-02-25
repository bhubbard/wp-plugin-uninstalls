<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('socproofgen_position');
delete_site_option('socproofgen_position');
delete_option('socproofgen_duration');
delete_site_option('socproofgen_duration');
delete_option('socproofgen_animation');
delete_site_option('socproofgen_animation');
delete_option('socproofgen_names');
delete_site_option('socproofgen_names');
delete_option('socproofgen_products');
delete_site_option('socproofgen_products');
delete_option('socproofgen_bg_color');
delete_site_option('socproofgen_bg_color');
delete_option('socproofgen_image_id');
delete_site_option('socproofgen_image_id');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_socproofgen_show_popup' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_socproofgen_show_popup' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_socproofgen_show_popup' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_socproofgen_show_popup' ) );

