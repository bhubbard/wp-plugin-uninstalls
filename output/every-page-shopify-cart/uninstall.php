<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('shopify_domain');
delete_site_option('shopify_domain');
delete_option('shopify_access_token');
delete_site_option('shopify_access_token');
delete_option('cart_tab_button_color');
delete_site_option('cart_tab_button_color');
delete_option('cart_tab_button_hover_color');
delete_site_option('cart_tab_button_hover_color');
delete_option('cart_tab_button_text_color');
delete_site_option('cart_tab_button_text_color');

