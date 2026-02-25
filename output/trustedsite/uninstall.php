<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('trustedsite_active');
delete_site_option('trustedsite_active');
delete_option('trustedsite_robots_enable');
delete_site_option('trustedsite_robots_enable');
delete_option('trustedsite_site_id');
delete_site_option('trustedsite_site_id');
delete_option('trustedsite_id');
delete_site_option('trustedsite_id');
delete_option('mcafeesecure_active');
delete_site_option('mcafeesecure_active');
delete_option('trustedsite_install_ping_done');
delete_site_option('trustedsite_install_ping_done');
delete_option('trustedsite_data');
delete_site_option('trustedsite_data');
delete_option('trustedsite_plugin_error');
delete_site_option('trustedsite_plugin_error');

