<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('price_guard_apply_globally');
delete_site_option('price_guard_apply_globally');
delete_option('price_guard_categories');
delete_site_option('price_guard_categories');
delete_option('price_guard_hide_price');
delete_site_option('price_guard_hide_price');
delete_option('price_guard_hide_add_to_cart');
delete_site_option('price_guard_hide_add_to_cart');
delete_option('price_guard_custom_button_text');
delete_site_option('price_guard_custom_button_text');
delete_option('price_guard_button_function');
delete_site_option('price_guard_button_function');
delete_option('price_guard_custom_button_link');
delete_site_option('price_guard_custom_button_link');
delete_option('price_guard_hide_prices');
delete_site_option('price_guard_hide_prices');
delete_option('price_guard_button_text');
delete_site_option('price_guard_button_text');

