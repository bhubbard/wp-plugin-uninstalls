<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('trgb_open_non_logged_text');
delete_site_option('trgb_open_non_logged_text');
delete_option('trgb_open_enrolled_text');
delete_site_option('trgb_open_enrolled_text');
delete_option('trgb_open_completed_text');
delete_site_option('trgb_open_completed_text');
delete_option('trgb_open_non_enrolled_text');
delete_site_option('trgb_open_non_enrolled_text');
delete_option('trgb_free_non_logged_text');
delete_site_option('trgb_free_non_logged_text');
delete_option('trgb_free_enrolled_text');
delete_site_option('trgb_free_enrolled_text');
delete_option('trgb_free_completed_text');
delete_site_option('trgb_free_completed_text');
delete_option('trgb_free_non_enrolled_text');
delete_site_option('trgb_free_non_enrolled_text');
delete_option('trgb_paynow_non_logged_text');
delete_site_option('trgb_paynow_non_logged_text');
delete_option('trgb_paynow_enrolled_text');
delete_site_option('trgb_paynow_enrolled_text');
delete_option('trgb_paynow_completed_text');
delete_site_option('trgb_paynow_completed_text');
delete_option('trgb_paynow_non_enrolled_text');
delete_site_option('trgb_paynow_non_enrolled_text');
delete_option('trgb_recurring_non_logged_text');
delete_site_option('trgb_recurring_non_logged_text');
delete_option('trgb_recurring_enrolled_text');
delete_site_option('trgb_recurring_enrolled_text');
delete_option('trgb_recurring_completed_text');
delete_site_option('trgb_recurring_completed_text');
delete_option('trgb_recurring_non_enrolled_text');
delete_site_option('trgb_recurring_non_enrolled_text');
delete_option('trgb_closed_non_logged_text');
delete_site_option('trgb_closed_non_logged_text');
delete_option('trgb_closed_enrolled_text');
delete_site_option('trgb_closed_enrolled_text');
delete_option('trgb_closed_completed_text');
delete_site_option('trgb_closed_completed_text');
delete_option('trgb_closed_non_enrolled_text');
delete_site_option('trgb_closed_non_enrolled_text');
delete_option('trgb_all_non_logged_color');
delete_site_option('trgb_all_non_logged_color');
delete_option('trgb_all_non_logged_background_color');
delete_site_option('trgb_all_non_logged_background_color');
delete_option('trgb_all_non_logged_font_size');
delete_site_option('trgb_all_non_logged_font_size');
delete_option('trgb_all_non_logged_uppercase');
delete_site_option('trgb_all_non_logged_uppercase');
delete_option('trgb_all_non_logged_border_radius');
delete_site_option('trgb_all_non_logged_border_radius');
delete_option('trgb_all_non_logged_border_color');
delete_site_option('trgb_all_non_logged_border_color');
delete_option('trgb_all_enrolled_color');
delete_site_option('trgb_all_enrolled_color');
delete_option('trgb_all_enrolled_background_color');
delete_site_option('trgb_all_enrolled_background_color');
delete_option('trgb_all_enrolled_font_size');
delete_site_option('trgb_all_enrolled_font_size');
delete_option('trgb_all_enrolled_uppercase');
delete_site_option('trgb_all_enrolled_uppercase');
delete_option('trgb_all_enrolled_border_radius');
delete_site_option('trgb_all_enrolled_border_radius');
delete_option('trgb_all_enrolled_border_color');
delete_site_option('trgb_all_enrolled_border_color');
delete_option('trgb_all_completed_color');
delete_site_option('trgb_all_completed_color');
delete_option('trgb_all_completed_background_color');
delete_site_option('trgb_all_completed_background_color');
delete_option('trgb_all_completed_font_size');
delete_site_option('trgb_all_completed_font_size');
delete_option('trgb_all_completed_uppercase');
delete_site_option('trgb_all_completed_uppercase');
delete_option('trgb_all_completed_border_radius');
delete_site_option('trgb_all_completed_border_radius');
delete_option('trgb_all_completed_border_color');
delete_site_option('trgb_all_completed_border_color');
delete_option('trgb_all_non_enrolled_color');
delete_site_option('trgb_all_non_enrolled_color');
delete_option('trgb_all_non_enrolled_background_color');
delete_site_option('trgb_all_non_enrolled_background_color');
delete_option('trgb_all_non_enrolled_font_size');
delete_site_option('trgb_all_non_enrolled_font_size');
delete_option('trgb_all_non_enrolled_uppercase');
delete_site_option('trgb_all_non_enrolled_uppercase');
delete_option('trgb_all_non_enrolled_border_radius');
delete_site_option('trgb_all_non_enrolled_border_radius');
delete_option('trgb_all_non_enrolled_border_color');
delete_site_option('trgb_all_non_enrolled_border_color');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_non_logged_text' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_completed_text' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_text' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

