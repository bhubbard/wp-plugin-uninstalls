<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fgts_numofslide_desktop');
delete_site_option('fgts_numofslide_desktop');
delete_option('fgts_numofslide_tablet');
delete_site_option('fgts_numofslide_tablet');
delete_option('fgts_numofslide_mobile');
delete_site_option('fgts_numofslide_mobile');
delete_option('fgts_controls_nav');
delete_site_option('fgts_controls_nav');
delete_option('fgts_control_dots');
delete_site_option('fgts_control_dots');
delete_option('fgts_loop_set');
delete_site_option('fgts_loop_set');
delete_option('fgts_autoplay');
delete_site_option('fgts_autoplay');
delete_option('fgts_autoplayhover');
delete_site_option('fgts_autoplayhover');
delete_option('fgts_numof_smartspeed');
delete_site_option('fgts_numof_smartspeed');
delete_option('fgts_numofposts');
delete_site_option('fgts_numofposts');
delete_option('fgts_img_chkbx');
delete_site_option('fgts_img_chkbx');
delete_option('fgts_designation_chkbx');
delete_site_option('fgts_designation_chkbx');
delete_option('fgts_viewbtn');
delete_site_option('fgts_viewbtn');
delete_option('fgts_viewbtn_link');
delete_site_option('fgts_viewbtn_link');
delete_option('fgts_shortcode_field');
delete_site_option('fgts_shortcode_field');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'fgts_testimonial_fields' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'fgts_testimonial_fields' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'fgts_testimonial_fields' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'fgts_testimonial_fields' ) );

