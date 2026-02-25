<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpic_mainwp_debug');
delete_site_option('wpic_mainwp_debug');
delete_option('ic_mainwp_connected');
delete_site_option('ic_mainwp_connected');
delete_option('mainwp_wpcompress_extension_activated');
delete_site_option('mainwp_wpcompress_extension_activated');

