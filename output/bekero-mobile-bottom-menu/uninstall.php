<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wmbm_bg_color');
delete_site_option('wmbm_bg_color');
delete_option('wmbm_icon_color');
delete_site_option('wmbm_icon_color');
delete_option('wmbm_active_icon_color');
delete_site_option('wmbm_active_icon_color');
delete_option('wmbm_cart_bubble_color');
delete_site_option('wmbm_cart_bubble_color');
delete_option('wmbm_cart_bubble_text_color');
delete_site_option('wmbm_cart_bubble_text_color');
delete_option('wmbm_border_radius');
delete_site_option('wmbm_border_radius');
delete_option('wmbm_glassmorphism');
delete_site_option('wmbm_glassmorphism');
delete_option('woocommerce_myaccount_page_id');
delete_site_option('woocommerce_myaccount_page_id');
delete_option('wmbm_hide_on_scroll');
delete_site_option('wmbm_hide_on_scroll');
delete_option('wmbm_item2_type');
delete_site_option('wmbm_item2_type');

