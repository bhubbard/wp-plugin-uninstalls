<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpdevartec_settings');
delete_site_option('wpdevartec_settings');
delete_option('wp_user_roles');
delete_site_option('wp_user_roles');
delete_option('wpdevart_booking_version_new');
delete_site_option('wpdevart_booking_version_new');
delete_option('wpdevart_booking_version');
delete_site_option('wpdevart_booking_version');
delete_option('wpdevart_permissions');
delete_site_option('wpdevart_permissions');

