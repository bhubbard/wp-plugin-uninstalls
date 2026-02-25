<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_easy_notices_clear_dimissals');
delete_site_option('wp_easy_notices_clear_dimissals');
delete_option('wp_easy_notices_padding_top_bottom');
delete_site_option('wp_easy_notices_padding_top_bottom');
delete_option('wp_easy_notices_padding_left_right');
delete_site_option('wp_easy_notices_padding_left_right');
delete_option('wp_easy_notices_font_size');
delete_site_option('wp_easy_notices_font_size');
delete_option('wp_easy_notices_background');
delete_site_option('wp_easy_notices_background');
delete_option('wp_easy_notices_text_color');
delete_site_option('wp_easy_notices_text_color');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_enabled' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wp_easy_notices_dismissable');
delete_site_option('wp_easy_notices_dismissable');
delete_option('wp_easy_notices_position');
delete_site_option('wp_easy_notices_position');
delete_option('wp_easy_notices_text');
delete_site_option('wp_easy_notices_text');
delete_option('wp_easy_notices_dismiss_icon');
delete_site_option('wp_easy_notices_dismiss_icon');

