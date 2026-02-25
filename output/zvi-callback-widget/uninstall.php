<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zvi_callback_title');
delete_site_option('zvi_callback_title');
delete_option('zvi_callback_subtitle');
delete_site_option('zvi_callback_subtitle');
delete_option('zvi_callback_color');
delete_site_option('zvi_callback_color');
delete_option('zvi_callback_color_hover');
delete_site_option('zvi_callback_color_hover');
delete_option('zvi_callback_email');
delete_site_option('zvi_callback_email');
delete_option('zvi_callback_url');
delete_site_option('zvi_callback_url');
delete_option('zvi_callback_shortcode');
delete_site_option('zvi_callback_shortcode');
delete_option('zvi_callback_img');
delete_site_option('zvi_callback_img');
delete_option('zvi_callback_telegram_id');
delete_site_option('zvi_callback_telegram_id');
delete_option('zvi_callback_telegram_token');
delete_site_option('zvi_callback_telegram_token');
delete_option('zvi_callback_telegram_send');
delete_site_option('zvi_callback_telegram_send');
delete_option('zvi_callback_left');
delete_site_option('zvi_callback_left');
delete_option('zvi_callback_color_text');
delete_site_option('zvi_callback_color_text');

