<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('co2_section_api_key');
delete_site_option('co2_section_api_key');
delete_option('co2_section_bg_color');
delete_site_option('co2_section_bg_color');
delete_option('co2_section_percentage_key');
delete_site_option('co2_section_percentage_key');
delete_option('co2_section_option_title_color');
delete_site_option('co2_section_option_title_color');
delete_option('co2_section_option_text_color');
delete_site_option('co2_section_option_text_color');
delete_option('co2_section_border_radius_round');
delete_site_option('co2_section_border_radius_round');
delete_option('co2_section_border_radius');
delete_site_option('co2_section_border_radius');
delete_option('co2_section_active_bg_color');
delete_site_option('co2_section_active_bg_color');
delete_option('co2_section_inactive_bg_color');
delete_site_option('co2_section_inactive_bg_color');
delete_option('co2_section_option_active_text_color');
delete_site_option('co2_section_option_active_text_color');
delete_option('co2_section_option_inactive_text_color');
delete_site_option('co2_section_option_inactive_text_color');
delete_option('co2_section_border_width');
delete_site_option('co2_section_border_width');
delete_option('co2_section_border_color');
delete_site_option('co2_section_border_color');
delete_option('co2_section_loader');
delete_site_option('co2_section_loader');
delete_option('co2_section_function2_key');
delete_site_option('co2_section_function2_key');
delete_option('co2_section_function1_key');
delete_site_option('co2_section_function1_key');
delete_option('default_settings_key');
delete_site_option('default_settings_key');
delete_option('co2_weight');
delete_site_option('co2_weight');
delete_option('co2_section_weight_bg_color');
delete_site_option('co2_section_weight_bg_color');
delete_option('co2_weight_font');
delete_site_option('co2_weight_font');
delete_option('co2_section_language');
delete_site_option('co2_section_language');
delete_option('co2_section1_weight_font_size');
delete_site_option('co2_section1_weight_font_size');
delete_option('co2_section_weight_font_color');
delete_site_option('co2_section_weight_font_color');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'totalweight' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'totalweight' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'totalweight' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'totalweight' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'totalcustomerweight' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'totalcustomerweight' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'totalcustomerweight' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'totalcustomerweight' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'green_shop' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'green_shop' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'green_shop' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'green_shop' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'roundOff' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'roundOff' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'roundOff' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'roundOff' ) );

