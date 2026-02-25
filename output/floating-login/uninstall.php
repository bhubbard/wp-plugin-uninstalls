<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fl_login_url');
delete_site_option('fl_login_url');
delete_option('fl_login_landing_url');
delete_site_option('fl_login_landing_url');
delete_option('fl_register_url');
delete_site_option('fl_register_url');
delete_option('fl_profile_url');
delete_site_option('fl_profile_url');
delete_option('fl_logout_url');
delete_site_option('fl_logout_url');
delete_option('fl_logout_landing_url');
delete_site_option('fl_logout_landing_url');
delete_option('fl_bg_color');
delete_site_option('fl_bg_color');
delete_option('fl_border_color');
delete_site_option('fl_border_color');
delete_option('fl_text_color');
delete_site_option('fl_text_color');
delete_option('fl_border_width');
delete_site_option('fl_border_width');
delete_option('fl_register_display');
delete_site_option('fl_register_display');
delete_option('fl_profile_display');
delete_site_option('fl_profile_display');
delete_option('fl_hover_color');
delete_site_option('fl_hover_color');
delete_option('fl_float_position');
delete_site_option('fl_float_position');
delete_option('fl_profile_text');
delete_site_option('fl_profile_text');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'fl_login_display' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'fl_login_display' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'fl_login_display' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'fl_login_display' ) );

