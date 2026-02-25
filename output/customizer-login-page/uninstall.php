<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('recently_activated');
delete_site_option('recently_activated');
delete_option('clp_build_package');
delete_site_option('clp_build_package');
delete_option('customizer_login_page_settings');
delete_site_option('customizer_login_page_settings');
delete_option('awp_login_logo');
delete_site_option('awp_login_logo');
delete_option('awp_login_logo_width');
delete_site_option('awp_login_logo_width');
delete_option('awp_login_logo_height');
delete_site_option('awp_login_logo_height');
delete_option('awp_login_logo_padding');
delete_site_option('awp_login_logo_padding');
delete_option('awp_login_bg_image');
delete_site_option('awp_login_bg_image');
delete_option('awp_login_customizer_bg_color');
delete_site_option('awp_login_customizer_bg_color');
delete_option('awp_login_customizer_form_bg_image');
delete_site_option('awp_login_customizer_form_bg_image');
delete_option('awp_login_customizer_form_bg_color');
delete_site_option('awp_login_customizer_form_bg_color');
delete_option('awp_login_customizer_form_width');
delete_site_option('awp_login_customizer_form_width');
delete_option('awp_login_customizer_form_height');
delete_site_option('awp_login_customizer_form_height');
delete_option('awp_login_customizer_form_padding');
delete_site_option('awp_login_customizer_form_padding');
delete_option('awp_login_customizer_form_border');
delete_site_option('awp_login_customizer_form_border');
delete_option('awp_login_customizer_form_border_radius');
delete_site_option('awp_login_customizer_form_border_radius');
delete_option('awp_login_customizer_form_shadow');
delete_site_option('awp_login_customizer_form_shadow');
delete_option('awp_login_customizer_form_bg_opacity');
delete_site_option('awp_login_customizer_form_bg_opacity');
delete_option('awp_login_customizer_field_width');
delete_site_option('awp_login_customizer_field_width');
delete_option('awp_login_customizer_field_margin');
delete_site_option('awp_login_customizer_field_margin');
delete_option('awp_login_customizer_field_bg');
delete_site_option('awp_login_customizer_field_bg');
delete_option('awp_login_customizer_field_color');
delete_site_option('awp_login_customizer_field_color');
delete_option('awp_login_customizer_field_label');
delete_site_option('awp_login_customizer_field_label');
delete_option('awp_login_customizer_button_bg');
delete_site_option('awp_login_customizer_button_bg');
delete_option('awp_login_customizer_button_border');
delete_site_option('awp_login_customizer_button_border');
delete_option('awp_login_customizer_button_shadow');
delete_site_option('awp_login_customizer_button_shadow');
delete_option('awp_login_customizer_button_color');
delete_site_option('awp_login_customizer_button_color');
delete_option('awp_login_customizer_button_hover_bg');
delete_site_option('awp_login_customizer_button_hover_bg');
delete_option('awp_login_customizer_button_hover_border');
delete_site_option('awp_login_customizer_button_hover_border');
delete_option('awp_login_customizer_form_footer_color');
delete_site_option('awp_login_customizer_form_footer_color');
delete_option('awp_login_customizer_form_footer_color_hover');
delete_site_option('awp_login_customizer_form_footer_color_hover');
delete_option('awp_login_customizer_other_css');
delete_site_option('awp_login_customizer_other_css');
delete_option('lpc_login_page_id');
delete_site_option('lpc_login_page_id');
delete_option('lpc_opts');
delete_site_option('lpc_opts');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'tgmpa_dismissed_notice_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'tgmpa_dismissed_notice_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'tgmpa_dismissed_notice_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'tgmpa_dismissed_notice_%' ) );

