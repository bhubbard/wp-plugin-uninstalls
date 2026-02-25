<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tt_add_to_cart_enabled');
delete_site_option('tt_add_to_cart_enabled');
delete_option('tt_add_to_cart_icon_enabled');
delete_site_option('tt_add_to_cart_icon_enabled');
delete_option('tt_buy_now_enabled');
delete_site_option('tt_buy_now_enabled');
delete_option('tt_buy_now_button_position');
delete_site_option('tt_buy_now_button_position');
delete_option('tt_buy_now_icon_enabled');
delete_site_option('tt_buy_now_icon_enabled');
delete_option('tt_skip_cart_checkout_enabled');
delete_site_option('tt_skip_cart_checkout_enabled');
delete_option('tt_buy_now_url');
delete_site_option('tt_buy_now_url');
delete_option('tt_buy_now_button_text');
delete_site_option('tt_buy_now_button_text');
delete_option('tt_add_to_cart_button_text');
delete_site_option('tt_add_to_cart_button_text');
delete_option('tt_add_to_cart_url');
delete_site_option('tt_add_to_cart_url');

