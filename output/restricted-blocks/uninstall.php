<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('daextrebl_options_version');
delete_site_option('daextrebl_options_version');
delete_option('daextrebl_database_version');
delete_site_option('daextrebl_database_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_google_font_url' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_cookie_expiration' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('daim_dismissible_notice_a');
delete_site_option('daim_dismissible_notice_a');
delete_option('daextrebl_font_family');
delete_site_option('daextrebl_font_family');
delete_option('daextrebl_container_background_color');
delete_site_option('daextrebl_container_background_color');
delete_option('daextrebl_title_font_color');
delete_site_option('daextrebl_title_font_color');
delete_option('daextrebl_description_font_color');
delete_site_option('daextrebl_description_font_color');
delete_option('daextrebl_validation_message_background_color');
delete_site_option('daextrebl_validation_message_background_color');
delete_option('daextrebl_validation_message_font_color');
delete_site_option('daextrebl_validation_message_font_color');
delete_option('daextrebl_controls_label_color');
delete_site_option('daextrebl_controls_label_color');
delete_option('daextrebl_borders_color');
delete_site_option('daextrebl_borders_color');
delete_option('daextrebl_buttons_background_color');
delete_site_option('daextrebl_buttons_background_color');
delete_option('daextrebl_buttons_font_color');
delete_site_option('daextrebl_buttons_font_color');
delete_option('daextrebl_controls_background_color');
delete_site_option('daextrebl_controls_background_color');
delete_option('daextrebl_controls_font_color');
delete_site_option('daextrebl_controls_font_color');
delete_option('daextrebl_controls_highlight_color');
delete_site_option('daextrebl_controls_highlight_color');
delete_option('daextrebl_controls_scrollbar_color');
delete_site_option('daextrebl_controls_scrollbar_color');
delete_option('daextrebl_controls_scrollbar_selection_color');
delete_site_option('daextrebl_controls_scrollbar_selection_color');
delete_option('daextrebl_icons_color');
delete_site_option('daextrebl_icons_color');
delete_option('daextrebl_margin_top');
delete_site_option('daextrebl_margin_top');
delete_option('daextrebl_margin_bottom');
delete_site_option('daextrebl_margin_bottom');
delete_option('daextrebl_responsive_breakpoint');
delete_site_option('daextrebl_responsive_breakpoint');

