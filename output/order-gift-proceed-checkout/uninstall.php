<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_ship_to_destination');
delete_site_option('woocommerce_ship_to_destination');
delete_option('woocommerce_enable_order_comments');
delete_site_option('woocommerce_enable_order_comments');
delete_option('wc_settings_tab_btn_text_color');
delete_site_option('wc_settings_tab_btn_text_color');
delete_option('wc_settings_tab_btn_border_color');
delete_site_option('wc_settings_tab_btn_border_color');
delete_option('wc_settings_tab_btn_bg_color');
delete_site_option('wc_settings_tab_btn_bg_color');
delete_option('wc_settings_enable_btn');
delete_site_option('wc_settings_enable_btn');
delete_option('wc_settings_tab_button_text');
delete_site_option('wc_settings_tab_button_text');
delete_option('ogpc_proceed_order');
delete_site_option('ogpc_proceed_order');
delete_option('wc_gift_proceed_installed');
delete_site_option('wc_gift_proceed_installed');
delete_option('wc_gift_proceed_version');
delete_site_option('wc_gift_proceed_version');

