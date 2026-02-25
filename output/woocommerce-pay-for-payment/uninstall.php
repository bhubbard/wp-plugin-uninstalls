<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_calc_taxes');
delete_site_option('woocommerce_calc_taxes');
delete_option('woocommerce_pay4pay_admin_footer_text_rated');
delete_site_option('woocommerce_pay4pay_admin_footer_text_rated');
delete_option('woocommerce_default_gateway');
delete_site_option('woocommerce_default_gateway');

