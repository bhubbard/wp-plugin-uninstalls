<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pricetrfo_display_on_product_page');
delete_site_option('pricetrfo_display_on_product_page');
delete_option('pricetrfo_ph_line_color');
delete_site_option('pricetrfo_ph_line_color');
delete_option('pricetrfo_ph_pointer_color');
delete_site_option('pricetrfo_ph_pointer_color');
delete_option('pricetrfo_ph_label');
delete_site_option('pricetrfo_ph_label');
delete_option('pricetrfo_button_text');
delete_site_option('pricetrfo_button_text');

