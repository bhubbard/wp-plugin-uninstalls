<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_smsrunot_enable');
delete_site_option('wp_smsrunot_enable');
delete_option('wp_smsrunot_apikey');
delete_site_option('wp_smsrunot_apikey');
delete_option('wp_smsrunot_number');
delete_site_option('wp_smsrunot_number');

