<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rcfwc_key');
delete_site_option('rcfwc_key');
delete_option('rcfwc_secret');
delete_site_option('rcfwc_secret');
delete_option('rcfwc_theme');
delete_site_option('rcfwc_theme');
delete_option('rcfwc_login');
delete_site_option('rcfwc_login');
delete_option('rcfwc_register');
delete_site_option('rcfwc_register');
delete_option('rcfwc_reset');
delete_site_option('rcfwc_reset');
delete_option('rcfwc_woo_checkout');
delete_site_option('rcfwc_woo_checkout');
delete_option('rcfwc_guest_only');
delete_site_option('rcfwc_guest_only');
delete_option('rcfwc_woo_login');
delete_site_option('rcfwc_woo_login');
delete_option('rcfwc_woo_register');
delete_site_option('rcfwc_woo_register');
delete_option('rcfwc_woo_reset');
delete_site_option('rcfwc_woo_reset');
delete_option('rcfwc_selected_payment_methods');
delete_site_option('rcfwc_selected_payment_methods');
delete_option('rcfwc_woo_checkout_pos');
delete_site_option('rcfwc_woo_checkout_pos');
delete_option('rcfwc_scripts_all');
delete_site_option('rcfwc_scripts_all');
delete_option('rcfwc_tested');
delete_site_option('rcfwc_tested');
delete_option('rcfwc_do_activation_redirect');
delete_site_option('rcfwc_do_activation_redirect');

