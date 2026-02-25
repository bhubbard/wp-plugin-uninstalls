<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('plazox_bar_top_menu_show');
delete_site_option('plazox_bar_top_menu_show');
delete_option('plazox_bar_top_menu_show_icon');
delete_site_option('plazox_bar_top_menu_show_icon');
delete_option('plazox_bar_top_menu_text_message');
delete_site_option('plazox_bar_top_menu_text_message');
delete_option('plazox_bar_top_menu_style');
delete_site_option('plazox_bar_top_menu_style');
delete_option('plazox_product_page_show');
delete_site_option('plazox_product_page_show');
delete_option('plazox_product_page_show_banner');
delete_site_option('plazox_product_page_show_banner');
delete_option('plazox_floating_banner_visible');
delete_site_option('plazox_floating_banner_visible');
delete_option('plazox_floating_banner_position');
delete_site_option('plazox_floating_banner_position');
delete_option('plazox_floating_banner_design');
delete_site_option('plazox_floating_banner_design');

