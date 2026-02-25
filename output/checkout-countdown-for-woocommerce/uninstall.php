<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ccfwoo_general_section');
delete_site_option('ccfwoo_general_section');
delete_option('ccfwoo_enable_countdown');
delete_site_option('ccfwoo_enable_countdown');
delete_option('ccfwoo_minutes');
delete_site_option('ccfwoo_minutes');
delete_option('ccfwoo_countdown_style');
delete_site_option('ccfwoo_countdown_style');
delete_option('ccfwoo_before_countdown');
delete_site_option('ccfwoo_before_countdown');
delete_option('ccfwoo_inbetween_countdown');
delete_site_option('ccfwoo_inbetween_countdown');
delete_option('ccfwoo_after_countdown');
delete_site_option('ccfwoo_after_countdown');
delete_option('ccfwoo_expired_text');
delete_site_option('ccfwoo_expired_text');
delete_option('ccfwoo_style_bg_color');
delete_site_option('ccfwoo_style_bg_color');
delete_option('ccfwoo_style_font_color');
delete_site_option('ccfwoo_style_font_color');
delete_option('ccfwoo_enable_banner_message');
delete_site_option('ccfwoo_enable_banner_message');
delete_option('ccfwoo_banner_message');
delete_site_option('ccfwoo_banner_message');

