<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sf_appear_percent');
delete_site_option('sf_appear_percent');
delete_option('sf_enable_member');
delete_site_option('sf_enable_member');
delete_option('sf_enable_guest');
delete_site_option('sf_enable_guest');
delete_option('sf_fly_from');
delete_site_option('sf_fly_from');
delete_option('sf_close_duration');
delete_site_option('sf_close_duration');
delete_option('sf_cent_bg_img_en');
delete_site_option('sf_cent_bg_img_en');
delete_option('sf_display_page');
delete_site_option('sf_display_page');
delete_option('sf_main_text_en');
delete_site_option('sf_main_text_en');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'sfsocial_each_img_en%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'sf_content_type%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('sf_page_id');
delete_site_option('sf_page_id');
delete_option('sf_post_id');
delete_site_option('sf_post_id');
delete_option('selectshape');
delete_site_option('selectshape');
delete_option('sh_color');
delete_site_option('sh_color');
delete_option('sf_cent_bg_img');
delete_site_option('sf_cent_bg_img');
delete_option('sf_main_text');
delete_site_option('sf_main_text');
delete_option('sf_main_font_color');
delete_site_option('sf_main_font_color');
delete_option('sf_main_font_size');
delete_site_option('sf_main_font_size');
delete_option('sf_size');
delete_site_option('sf_size');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'sfsocial_each_color%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'sfsocial_each_img%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'sfsocial_lable%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'sf_social_font_color%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'sf_social_font_size%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'sf_scoial_icon_fa%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'sf_social_icon_color%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'sf_social_icon_size%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'sf_enable_border_hover%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'sf_enable_ttip_hover%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'sf_enable_ttip_msg%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'sf_each_color_hvr%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('sf_close_position');
delete_site_option('sf_close_position');
delete_option('sf_redirection_en');
delete_site_option('sf_redirection_en');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'sfsocial_net_show%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'sfsocial_net%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_click_count' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_uclick_count' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('sf_easing_type');
delete_site_option('sf_easing_type');
delete_option('sf_animation_time');
delete_site_option('sf_animation_time');
delete_option('sf_enable_ttip_hover1');
delete_site_option('sf_enable_ttip_hover1');
delete_option('sf_enable_ttip_msg1');
delete_site_option('sf_enable_ttip_msg1');
delete_option('sf_1_uclick_count');
delete_site_option('sf_1_uclick_count');
delete_option('sf_1_click_count');
delete_site_option('sf_1_click_count');
delete_option('sf_enable_ttip_hover2');
delete_site_option('sf_enable_ttip_hover2');
delete_option('sf_enable_ttip_msg2');
delete_site_option('sf_enable_ttip_msg2');
delete_option('sf_2_uclick_count');
delete_site_option('sf_2_uclick_count');
delete_option('sf_2_click_count');
delete_site_option('sf_2_click_count');
delete_option('sf_enable_ttip_hover3');
delete_site_option('sf_enable_ttip_hover3');
delete_option('sf_enable_ttip_msg3');
delete_site_option('sf_enable_ttip_msg3');
delete_option('sf_3_uclick_count');
delete_site_option('sf_3_uclick_count');
delete_option('sf_3_click_count');
delete_site_option('sf_3_click_count');
delete_option('sf_enable_ttip_hover4');
delete_site_option('sf_enable_ttip_hover4');
delete_option('sf_enable_ttip_msg4');
delete_site_option('sf_enable_ttip_msg4');
delete_option('sf_4_uclick_count');
delete_site_option('sf_4_uclick_count');
delete_option('sf_4_click_count');
delete_site_option('sf_4_click_count');
delete_option('sf_enable_ttip_hover5');
delete_site_option('sf_enable_ttip_hover5');
delete_option('sf_enable_ttip_msg5');
delete_site_option('sf_enable_ttip_msg5');
delete_option('sf_5_uclick_count');
delete_site_option('sf_5_uclick_count');
delete_option('sf_5_click_count');
delete_site_option('sf_5_click_count');
delete_option('sf_enable_ttip_hover6');
delete_site_option('sf_enable_ttip_hover6');
delete_option('sf_enable_ttip_msg6');
delete_site_option('sf_enable_ttip_msg6');
delete_option('sf_6_uclick_count');
delete_site_option('sf_6_uclick_count');
delete_option('sf_6_click_count');
delete_site_option('sf_6_click_count');
delete_option('sf_enable_ttip_hover7');
delete_site_option('sf_enable_ttip_hover7');
delete_option('sf_enable_ttip_msg7');
delete_site_option('sf_enable_ttip_msg7');
delete_option('sf_7_uclick_count');
delete_site_option('sf_7_uclick_count');
delete_option('sf_7_click_count');
delete_site_option('sf_7_click_count');
delete_option('sf_enable_ttip_hover8');
delete_site_option('sf_enable_ttip_hover8');
delete_option('sf_enable_ttip_msg8');
delete_site_option('sf_enable_ttip_msg8');
delete_option('sf_8_uclick_count');
delete_site_option('sf_8_uclick_count');
delete_option('sf_8_click_count');
delete_site_option('sf_8_click_count');
delete_option('sh_aftereffects');
delete_site_option('sh_aftereffects');
delete_option('facebookun');
delete_site_option('facebookun');

