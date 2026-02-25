<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_scribd_api_key');
delete_site_option('wp_scribd_api_key');
delete_option('wp_scribd_secret');
delete_site_option('wp_scribd_secret');
delete_option('wp_scribd_position');
delete_site_option('wp_scribd_position');

