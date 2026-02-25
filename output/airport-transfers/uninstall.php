<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ns-airport-transfers-admin-email');
delete_site_option('ns-airport-transfers-admin-email');
delete_option('ns-airport-transfers-contact-email');
delete_site_option('ns-airport-transfers-contact-email');
delete_option('ns-airport-transfers-contact-phone');
delete_site_option('ns-airport-transfers-contact-phone');
delete_option('ns-airport-transfers-country');
delete_site_option('ns-airport-transfers-country');
delete_option('ns-airport-transfers-resort');
delete_site_option('ns-airport-transfers-resort');
delete_option('ns-airport-transfers-time-format');
delete_site_option('ns-airport-transfers-time-format');

