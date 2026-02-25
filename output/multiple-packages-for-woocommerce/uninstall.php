<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('multi_packages_type');
delete_site_option('multi_packages_type');
delete_option('multi_packages_enabled');
delete_site_option('multi_packages_enabled');
delete_option('multi_packages_free_shipping');
delete_site_option('multi_packages_free_shipping');

