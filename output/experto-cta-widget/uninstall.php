<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('esc_box_primary_color');
delete_site_option('esc_box_primary_color');
delete_option('esc_box_secondary_color');
delete_site_option('esc_box_secondary_color');
delete_option('esc_box_text_color');
delete_site_option('esc_box_text_color');
delete_option('esc_box_icon_color');
delete_site_option('esc_box_icon_color');
delete_option('esc_box_footer_icon_color');
delete_site_option('esc_box_footer_icon_color');
delete_option('esc_box_disable');
delete_site_option('esc_box_disable');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_disable' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_form_disable' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_icon' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_title' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_description' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_form_placeholder' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_clicked' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_link' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('esc_body_title_setting');
delete_site_option('esc_body_title_setting');
delete_option('esc_body_desc_setting');
delete_site_option('esc_body_desc_setting');
delete_option('esc_email_setting');
delete_site_option('esc_email_setting');
delete_option('esc_main_button_text');
delete_site_option('esc_main_button_text');
delete_option('esc_main_button_position');
delete_site_option('esc_main_button_position');
delete_option('esc_main_button_icon');
delete_site_option('esc_main_button_icon');
delete_option('esc_box1_icon');
delete_site_option('esc_box1_icon');
delete_option('esc_box1_title');
delete_site_option('esc_box1_title');
delete_option('esc_box2_icon');
delete_site_option('esc_box2_icon');
delete_option('esc_box2_title');
delete_site_option('esc_box2_title');
delete_option('esc_box3_icon');
delete_site_option('esc_box3_icon');
delete_option('esc_box3_title');
delete_site_option('esc_box3_title');
delete_option('esc_box4_icon');
delete_site_option('esc_box4_icon');
delete_option('esc_box4_title');
delete_site_option('esc_box4_title');
delete_option('esc_box5_icon');
delete_site_option('esc_box5_icon');
delete_option('esc_box5_title');
delete_site_option('esc_box5_title');
delete_option('esc_box6_icon');
delete_site_option('esc_box6_icon');
delete_option('esc_box6_title');
delete_site_option('esc_box6_title');
delete_option('esc_box1_clicked');
delete_site_option('esc_box1_clicked');
delete_option('esc_box2_clicked');
delete_site_option('esc_box2_clicked');
delete_option('esc_box3_clicked');
delete_site_option('esc_box3_clicked');
delete_option('esc_box4_clicked');
delete_site_option('esc_box4_clicked');
delete_option('esc_box5_clicked');
delete_site_option('esc_box5_clicked');
delete_option('esc_box6_clicked');
delete_site_option('esc_box6_clicked');
delete_option('esc_main_form_disable');
delete_site_option('esc_main_form_disable');

