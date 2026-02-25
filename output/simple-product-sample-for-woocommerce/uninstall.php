<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mcisps_background_button_color');
delete_site_option('mcisps_background_button_color');
delete_option('mcisps_text_button_color');
delete_site_option('mcisps_text_button_color');
delete_option('mcisps_border_color');
delete_site_option('mcisps_border_color');
delete_option('mcisps_border_width');
delete_site_option('mcisps_border_width');
delete_option('mcisps_max_samples');
delete_site_option('mcisps_max_samples');
delete_option('mcisps_text_button');
delete_site_option('mcisps_text_button');
delete_option('mcisps_text_button_max');
delete_site_option('mcisps_text_button_max');
delete_option('mcisps_padding_top');
delete_site_option('mcisps_padding_top');
delete_option('mcisps_padding_bottom');
delete_site_option('mcisps_padding_bottom');
delete_option('mcisps_padding_left');
delete_site_option('mcisps_padding_left');
delete_option('mcisps_padding_right');
delete_site_option('mcisps_padding_right');
delete_option('mcisps_margin_top');
delete_site_option('mcisps_margin_top');
delete_option('mcisps_margin_bottom');
delete_site_option('mcisps_margin_bottom');
delete_option('mcisps_margin_left');
delete_site_option('mcisps_margin_left');
delete_option('mcisps_margin_right');
delete_site_option('mcisps_margin_right');
delete_option('mcisps_force_margin');
delete_site_option('mcisps_force_margin');
delete_option('mcisps_default_price');
delete_site_option('mcisps_default_price');
delete_option('mcisps_font_size');
delete_site_option('mcisps_font_size');
delete_option('mcisps_font_weight');
delete_site_option('mcisps_font_weight');
delete_option('mcisps_no_variations');
delete_site_option('mcisps_no_variations');
delete_option('mcisps_delete_all_data');
delete_site_option('mcisps_delete_all_data');
delete_option('mcisps_selected_categories');
delete_site_option('mcisps_selected_categories');
delete_option('mcisps_auth_premium');
delete_site_option('mcisps_auth_premium');
delete_option('mcisps_default_values');
delete_site_option('mcisps_default_values');
delete_option('mcisps_hook_sample_btn');
delete_site_option('mcisps_hook_sample_btn');
delete_option('mcisps_version');
delete_site_option('mcisps_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_lemon_license_key' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_lemon_instance_id' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sample_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sample_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sample_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sample_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sample_active' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sample_active' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sample_active' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sample_active' ) );

