<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpEventos-email');
delete_site_option('wpEventos-email');
delete_option('wpEventos-password');
delete_site_option('wpEventos-password');
delete_option('wpEventos-installed');
delete_site_option('wpEventos-installed');
delete_option('wp-eventos');
delete_site_option('wp-eventos');

