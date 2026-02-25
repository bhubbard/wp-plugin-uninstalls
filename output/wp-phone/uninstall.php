<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_phone_is_registered_1');
delete_site_option('wp_phone_is_registered_1');
delete_option('wp_phone_registration_data');
delete_site_option('wp_phone_registration_data');
delete_option('wp_phone_number');
delete_site_option('wp_phone_number');

