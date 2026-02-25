<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fake_title');
delete_site_option('fake_title');
delete_option('fake_price');
delete_site_option('fake_price');
delete_option('fake_buyer');
delete_site_option('fake_buyer');
delete_option('fake_description');
delete_site_option('fake_description');
delete_option('fake_image');
delete_site_option('fake_image');
delete_option('wc_sales_notification_do_activation_redirect');
delete_site_option('wc_sales_notification_do_activation_redirect');

