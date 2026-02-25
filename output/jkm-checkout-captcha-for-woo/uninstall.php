<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jkmccfw_woo_login');
delete_site_option('jkmccfw_woo_login');
delete_option('jkmccfw_woo_register');
delete_site_option('jkmccfw_woo_register');
delete_option('jkmccfw_woo_checkout');
delete_site_option('jkmccfw_woo_checkout');
delete_option('jkmccfw_guest_only');
delete_site_option('jkmccfw_guest_only');
delete_option('jkmccfw_woo_checkout_pos');
delete_site_option('jkmccfw_woo_checkout_pos');
delete_option('jkmccfw_login');
delete_site_option('jkmccfw_login');
delete_option('jkmccfw_register');
delete_site_option('jkmccfw_register');
delete_option('jkmccfw_woo_reset');
delete_site_option('jkmccfw_woo_reset');
delete_option('jkmccfw_key');
delete_site_option('jkmccfw_key');
delete_option('jkmccfw_secret');
delete_site_option('jkmccfw_secret');
delete_option('jkmccfw_theme');
delete_site_option('jkmccfw_theme');
delete_option('jkmccfw_selected_payment_methods');
delete_site_option('jkmccfw_selected_payment_methods');
delete_option('jkmccfw_tested');
delete_site_option('jkmccfw_tested');
delete_option('jkmccfw_activation_redirect');
delete_site_option('jkmccfw_activation_redirect');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

