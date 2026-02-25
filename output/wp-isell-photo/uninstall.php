<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_iSell_photo_paypal_email_address');
delete_site_option('wp_iSell_photo_paypal_email_address');
delete_option('wp_iSell_photo_paypal_currency_code');
delete_site_option('wp_iSell_photo_paypal_currency_code');
delete_option('wp_iSell_photo_paypal_currency_symbol');
delete_site_option('wp_iSell_photo_paypal_currency_symbol');
delete_option('wp_iSell_photo_paypal_return_url');
delete_site_option('wp_iSell_photo_paypal_return_url');

