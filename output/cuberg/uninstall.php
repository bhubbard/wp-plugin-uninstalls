<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cuberg_status');
delete_site_option('cuberg_status');
delete_option('cuberg_global_settings');
delete_site_option('cuberg_global_settings');
delete_option('cuberg_config');
delete_site_option('cuberg_config');
delete_option('activate_cuberg');
delete_site_option('activate_cuberg');

