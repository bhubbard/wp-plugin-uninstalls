<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('donations_version');
delete_site_option('donations_version');
delete_option('donations_widget_options');
delete_site_option('donations_widget_options');
delete_option('donations_alertpay_email');
delete_site_option('donations_alertpay_email');
delete_option('donations_moneybookers_email');
delete_site_option('donations_moneybookers_email');
delete_option('donations_paypal_email');
delete_site_option('donations_paypal_email');
delete_option('web_invoice_force_https');
delete_site_option('web_invoice_force_https');
delete_option('donations_item_name');
delete_site_option('donations_item_name');
delete_option('donations_item_code');
delete_site_option('donations_item_code');
delete_option('donations_currency');
delete_site_option('donations_currency');
delete_option('donations_amount');
delete_site_option('donations_amount');

