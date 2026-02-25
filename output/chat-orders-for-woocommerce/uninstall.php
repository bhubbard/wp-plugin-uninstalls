<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cofwc_whatsapp_number');
delete_site_option('cofwc_whatsapp_number');
delete_option('cofwc_button_text');
delete_site_option('cofwc_button_text');
delete_option('cofwc_show_in_product_page');
delete_site_option('cofwc_show_in_product_page');
delete_option('cofwc_new_tab');
delete_site_option('cofwc_new_tab');
delete_option('cofwc_hide_price');
delete_site_option('cofwc_hide_price');
delete_option('cofwc_hide_add_cart_btn');
delete_site_option('cofwc_hide_add_cart_btn');

