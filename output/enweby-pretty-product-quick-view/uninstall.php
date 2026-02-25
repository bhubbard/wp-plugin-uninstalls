<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('enweby_wpqv_button_text_color');
delete_site_option('enweby_wpqv_button_text_color');
delete_option('enweby_wpqv_button_text_hover_color');
delete_site_option('enweby_wpqv_button_text_hover_color');
delete_option('enweby_wpqv_button_bg_color');
delete_site_option('enweby_wpqv_button_bg_color');
delete_option('enweby_wpqv_button_hover_bg_color');
delete_site_option('enweby_wpqv_button_hover_bg_color');
delete_option('enweby_wpqv_icon_color');
delete_site_option('enweby_wpqv_icon_color');
delete_option('enweby_wpqv_icon_hover_color');
delete_site_option('enweby_wpqv_icon_hover_color');
delete_option('enweby_wpqv_text_font_size');
delete_site_option('enweby_wpqv_text_font_size');
delete_option('enweby_wpqv_modal_bgcolor');
delete_site_option('enweby_wpqv_modal_bgcolor');
delete_option('enweby_wpqv_closing_button_color');
delete_site_option('enweby_wpqv_closing_button_color');
delete_option('enweby_wpqv_closing_button_hover_color');
delete_site_option('enweby_wpqv_closing_button_hover_color');
delete_option('enweby_wpqv_button_text');
delete_site_option('enweby_wpqv_button_text');
delete_option('enweby_wpqv_enable_quickview_on_mobile');
delete_site_option('enweby_wpqv_enable_quickview_on_mobile');
delete_option('enweby_wpqv_button_position');
delete_site_option('enweby_wpqv_button_position');

