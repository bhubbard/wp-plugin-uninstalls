<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_last_send' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_skipped' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_allow_tracking' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_notice' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('gs_customize_presets_settings');
delete_site_option('gs_customize_presets_settings');
delete_option('gs_form_animate');
delete_site_option('gs_form_animate');
delete_option('gscusl-form-position');
delete_site_option('gscusl-form-position');
delete_option('gs_logo');
delete_site_option('gs_logo');
delete_option('gs_logo_width');
delete_site_option('gs_logo_width');
delete_option('gs_logo_height');
delete_site_option('gs_logo_height');
delete_option('gs_logo_hide');
delete_site_option('gs_logo_hide');
delete_option('gs_logo_padding');
delete_site_option('gs_logo_padding');
delete_option('gs_bg_image');
delete_site_option('gs_bg_image');
delete_option('gs_bg_color');
delete_site_option('gs_bg_color');
delete_option('gs_bg_repeat');
delete_site_option('gs_bg_repeat');
delete_option('gs_background_position');
delete_site_option('gs_background_position');
delete_option('gs_bg_size');
delete_site_option('gs_bg_size');
delete_option('gs_back_hide');
delete_site_option('gs_back_hide');
delete_option('gs_form_bg_image');
delete_site_option('gs_form_bg_image');
delete_option('gs_form_bg_position');
delete_site_option('gs_form_bg_position');
delete_option('gs_form_bg_repeat');
delete_site_option('gs_form_bg_repeat');
delete_option('gs_form_bg_size');
delete_site_option('gs_form_bg_size');
delete_option('gs_form_bg_color');
delete_site_option('gs_form_bg_color');
delete_option('gs_form_width');
delete_site_option('gs_form_width');
delete_option('gs_form_height');
delete_site_option('gs_form_height');
delete_option('gs_form_padding');
delete_site_option('gs_form_padding');
delete_option('gs_form_font_sizes');
delete_site_option('gs_form_font_sizes');
delete_option('gs_form_border_color');
delete_site_option('gs_form_border_color');
delete_option('gs_form_border_thick');
delete_site_option('gs_form_border_thick');
delete_option('gs_form_border_style');
delete_site_option('gs_form_border_style');
delete_option('gs_form_border_radius');
delete_site_option('gs_form_border_radius');
delete_option('gs_field_width');
delete_site_option('gs_field_width');
delete_option('gs_field_margin');
delete_site_option('gs_field_margin');
delete_option('gs_field_bg');
delete_site_option('gs_field_bg');
delete_option('gs_field_color');
delete_site_option('gs_field_color');
delete_option('gs_field_label');
delete_site_option('gs_field_label');
delete_option('gs_field_border_color');
delete_site_option('gs_field_border_color');
delete_option('gs_form_field_border_thick');
delete_site_option('gs_form_field_border_thick');
delete_option('gs_form_field_border_style');
delete_site_option('gs_form_field_border_style');
delete_option('gs_button_color');
delete_site_option('gs_button_color');
delete_option('gs_button_bg');
delete_site_option('gs_button_bg');
delete_option('gs_button_border');
delete_site_option('gs_button_border');
delete_option('gs_button_hover_color');
delete_site_option('gs_button_hover_color');
delete_option('gs_button_hover_bg');
delete_site_option('gs_button_hover_bg');
delete_option('gs_button_hover_border');
delete_site_option('gs_button_hover_border');
delete_option('gs_other_color');
delete_site_option('gs_other_color');
delete_option('gs_other_color_hover');
delete_site_option('gs_other_color_hover');
delete_option('gs_footer_display_text');
delete_site_option('gs_footer_display_text');
delete_option('gs_back_display_text');
delete_site_option('gs_back_display_text');
delete_option('gs_other_css');
delete_site_option('gs_other_css');
delete_option('gs_logo_title');
delete_site_option('gs_logo_title');
delete_option('gs_logo_url');
delete_site_option('gs_logo_url');
delete_option('gscusl-login-icons');
delete_site_option('gscusl-login-icons');
delete_option('gs_login_footer_text');
delete_site_option('gs_login_footer_text');

// Clear Cron Jobs

