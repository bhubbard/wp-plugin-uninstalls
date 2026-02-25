<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('buy_now_button_text');
delete_site_option('buy_now_button_text');
delete_option('buy_now_button_bg_color');
delete_site_option('buy_now_button_bg_color');
delete_option('buy_now_button_text_color');
delete_site_option('buy_now_button_text_color');
delete_option('buy_now_button_margin_top');
delete_site_option('buy_now_button_margin_top');
delete_option('buy_now_button_padding');
delete_site_option('buy_now_button_padding');
delete_option('buy_now_button_border_color');
delete_site_option('buy_now_button_border_color');
delete_option('buy_now_button_border_width');
delete_site_option('buy_now_button_border_width');
delete_option('buy_now_button_font_size');
delete_site_option('buy_now_button_font_size');
delete_option('buy_now_button_font_weight');
delete_site_option('buy_now_button_font_weight');
delete_option('buy_now_button_border_radius');
delete_site_option('buy_now_button_border_radius');

