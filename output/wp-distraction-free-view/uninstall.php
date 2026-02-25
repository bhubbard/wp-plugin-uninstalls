<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpdfv_version');
delete_site_option('wpdfv_version');
delete_option('wpdfv_settings');
delete_site_option('wpdfv_settings');
delete_option('wpdfv_settings_readmore_button_text');
delete_site_option('wpdfv_settings_readmore_button_text');
delete_option('wpdfv_settings_enable_print');
delete_site_option('wpdfv_settings_enable_print');
delete_option('wpdfv_settings_enable_font_awesome');
delete_site_option('wpdfv_settings_enable_font_awesome');
delete_option('wpdfv_settings_enable_fullscreen');
delete_site_option('wpdfv_settings_enable_fullscreen');
delete_option('wpdfv_settings_btn_bg_color');
delete_site_option('wpdfv_settings_btn_bg_color');
delete_option('wpdfv_settings_btn_text_color');
delete_site_option('wpdfv_settings_btn_text_color');
delete_option('wpdfv_settings_btn_hover_bg_color');
delete_site_option('wpdfv_settings_btn_hover_bg_color');
delete_option('wpdfv_settings_btn_hover_text_color');
delete_site_option('wpdfv_settings_btn_hover_text_color');
delete_option('wpdfv_settings_btn_text_fontsize');
delete_site_option('wpdfv_settings_btn_text_fontsize');
delete_option('wpdfv_settings_btn_icon_fontsize');
delete_site_option('wpdfv_settings_btn_icon_fontsize');
delete_option('wpdfv_settings_btn_padding');
delete_site_option('wpdfv_settings_btn_padding');

