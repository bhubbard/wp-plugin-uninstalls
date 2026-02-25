<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sell_photo_plugin_version');
delete_site_option('sell_photo_plugin_version');
delete_option('sell_photo_paypal_email');
delete_site_option('sell_photo_paypal_email');
delete_option('sell_photo_currency_code');
delete_site_option('sell_photo_currency_code');
delete_option('sell_photo_price_amount');
delete_site_option('sell_photo_price_amount');
delete_option('sell_photo_button_anchor');
delete_site_option('sell_photo_button_anchor');
delete_option('sell_photo_return_url');
delete_site_option('sell_photo_return_url');
delete_option('sell_photo_enable_testmode');
delete_site_option('sell_photo_enable_testmode');

