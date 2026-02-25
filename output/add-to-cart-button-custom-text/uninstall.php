<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('add_to_cart_external');
delete_site_option('add_to_cart_external');
delete_option('add_to_cart_grouped');
delete_site_option('add_to_cart_grouped');
delete_option('add_to_cart_simple');
delete_site_option('add_to_cart_simple');
delete_option('add_to_cart_variable');
delete_site_option('add_to_cart_variable');
delete_option('add_to_cart_bookable');
delete_site_option('add_to_cart_bookable');
delete_option('add_to_cart_external_single');
delete_site_option('add_to_cart_external_single');
delete_option('add_to_cart_grouped_single');
delete_site_option('add_to_cart_grouped_single');
delete_option('add_to_cart_simple_single');
delete_site_option('add_to_cart_simple_single');
delete_option('add_to_cart_variable_single');
delete_site_option('add_to_cart_variable_single');
delete_option('add_to_cart_bookable_single');
delete_site_option('add_to_cart_bookable_single');
delete_option('add_to_cart_button_text_settings');
delete_site_option('add_to_cart_button_text_settings');

// Delete Transients
delete_transient('add-to-cart-custom-text-activado');
delete_site_transient('add-to-cart-custom-text-activado');

