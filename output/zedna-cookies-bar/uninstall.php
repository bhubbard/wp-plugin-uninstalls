<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zedna_cookies_bar_message');
delete_site_option('zedna_cookies_bar_message');
delete_option('zedna_cookies_bar_button');
delete_site_option('zedna_cookies_bar_button');
delete_option('zedna_cookies_bar_close');
delete_site_option('zedna_cookies_bar_close');
delete_option('zedna_cookies_bar_close_color');
delete_site_option('zedna_cookies_bar_close_color');
delete_option('zedna_cookies_bar_btn_bg_color');
delete_site_option('zedna_cookies_bar_btn_bg_color');
delete_option('zedna_cookies_bar_btn_text_color');
delete_site_option('zedna_cookies_bar_btn_text_color');
delete_option('zedna_cookies_bar_bg_color');
delete_site_option('zedna_cookies_bar_bg_color');
delete_option('zedna_cookies_bar_text_color');
delete_site_option('zedna_cookies_bar_text_color');
delete_option('zedna_cookies_bar_link_color');
delete_site_option('zedna_cookies_bar_link_color');
delete_option('zedna_cookies_bar_position');
delete_site_option('zedna_cookies_bar_position');
delete_option('zedna_cookies_bar_custom_css');
delete_site_option('zedna_cookies_bar_custom_css');
delete_option('zedna_cookies_bar_show_button');
delete_site_option('zedna_cookies_bar_show_button');
delete_option('zedna_cookies_bar_custom_js');
delete_site_option('zedna_cookies_bar_custom_js');

