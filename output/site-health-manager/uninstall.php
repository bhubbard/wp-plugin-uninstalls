<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('site_health_manager_disabled_tests');
delete_site_option('site_health_manager_disabled_tests');
delete_option('site_health_manager_disabled_info');
delete_site_option('site_health_manager_disabled_info');

