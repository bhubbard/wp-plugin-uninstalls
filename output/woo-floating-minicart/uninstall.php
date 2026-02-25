<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('Woo_floating_minicart_position');
delete_site_option('Woo_floating_minicart_position');
delete_option('Woo_floating_minicart_show_shop_page_link');
delete_site_option('Woo_floating_minicart_show_shop_page_link');
delete_option('Woo_floating_minicart_show_best_selling_products');
delete_site_option('Woo_floating_minicart_show_best_selling_products');
delete_option('Woo_floating_minicart_hide');
delete_site_option('Woo_floating_minicart_hide');
delete_option('Woo_floating_minicart_offset');
delete_site_option('Woo_floating_minicart_offset');
delete_option('Woo_floating_minicart_primary_color');
delete_site_option('Woo_floating_minicart_primary_color');
delete_option('Woo_floating_minicart_secondary_color');
delete_site_option('Woo_floating_minicart_secondary_color');
delete_option('Woo_floating_minicart_button_color');
delete_site_option('Woo_floating_minicart_button_color');

