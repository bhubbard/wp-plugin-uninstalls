<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sh_title');
delete_site_option('sh_title');
delete_option('sh_message');
delete_site_option('sh_message');
delete_option('sh_show');
delete_site_option('sh_show');
delete_option('sh_show_links_1');
delete_site_option('sh_show_links_1');
delete_option('sh_show_links_2');
delete_site_option('sh_show_links_2');
delete_option('sh_show_custom_code');
delete_site_option('sh_show_custom_code');
delete_option('sh_bg_color');
delete_site_option('sh_bg_color');
delete_option('sh_title_color');
delete_site_option('sh_title_color');
delete_option('sh_message_color');
delete_site_option('sh_message_color');
delete_option('sh_title_font_size');
delete_site_option('sh_title_font_size');
delete_option('sh_title_text_align');
delete_site_option('sh_title_text_align');
delete_option('sh_title_font_weight');
delete_site_option('sh_title_font_weight');
delete_option('sh_title_font_style');
delete_site_option('sh_title_font_style');
delete_option('sh_title_font_decoration');
delete_site_option('sh_title_font_decoration');
delete_option('sh_message_font_size');
delete_site_option('sh_message_font_size');
delete_option('sh_message_text_align');
delete_site_option('sh_message_text_align');
delete_option('sh_message_font_weight');
delete_site_option('sh_message_font_weight');
delete_option('sh_message_font_style');
delete_site_option('sh_message_font_style');
delete_option('sh_message_font_decoration');
delete_site_option('sh_message_font_decoration');
delete_option('sh_code_message');
delete_site_option('sh_code_message');
delete_option('sh_width');
delete_site_option('sh_width');
delete_option('sh_border_color');
delete_site_option('sh_border_color');
delete_option('sh_border_style');
delete_site_option('sh_border_style');
delete_option('sh_border_width');
delete_site_option('sh_border_width');
delete_option('sh_show_clock_date');
delete_site_option('sh_show_clock_date');
delete_option('sh_show_clock_time');
delete_site_option('sh_show_clock_time');
delete_option('sh_date_format');
delete_site_option('sh_date_format');
delete_option('sh_date_position');
delete_site_option('sh_date_position');
delete_option('sh_date_font_size');
delete_site_option('sh_date_font_size');
delete_option('sh_date_font_weight');
delete_site_option('sh_date_font_weight');
delete_option('sh_date_font_color');
delete_site_option('sh_date_font_color');
delete_option('sh_date_font_style');
delete_site_option('sh_date_font_style');
delete_option('sh_date_font_decoration');
delete_site_option('sh_date_font_decoration');
delete_option('sh_time_format');
delete_site_option('sh_time_format');
delete_option('sh_time_position');
delete_site_option('sh_time_position');
delete_option('sh_time_font_size');
delete_site_option('sh_time_font_size');
delete_option('sh_time_font_color');
delete_site_option('sh_time_font_color');
delete_option('sh_time_font_weight');
delete_site_option('sh_time_font_weight');
delete_option('sh_time_font_style');
delete_site_option('sh_time_font_style');
delete_option('sh_time_font_decoration');
delete_site_option('sh_time_font_decoration');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'sh_link_title_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'sh_link_url_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'sh_link_title_color_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'sh_link_font_size_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'sh_link_text_align_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'sh_font_icon_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'sh_link_open_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'sh_link_font_weight_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'sh_link_font_style_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'sh_link_font_decoration_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'sh_col_width_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

