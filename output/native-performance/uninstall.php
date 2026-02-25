<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('native_performance_activation_welcome');
delete_site_option('native_performance_activation_welcome');
delete_option('nperformance_modules');
delete_site_option('nperformance_modules');

