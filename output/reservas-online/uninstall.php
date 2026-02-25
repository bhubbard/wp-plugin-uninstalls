<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpReservas-email');
delete_site_option('wpReservas-email');
delete_option('wpReservas-password');
delete_site_option('wpReservas-password');
delete_option('wpReservas-installed');
delete_site_option('wpReservas-installed');
delete_option('wp-reservas');
delete_site_option('wp-reservas');

