<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gotowebinar_settings');
delete_site_option('gotowebinar_settings');
delete_option('gotowebinar_log');
delete_site_option('gotowebinar_log');
delete_option('gotowebinar_connection_log');
delete_site_option('gotowebinar_connection_log');
delete_option('gotowebinar_auth_settings');
delete_site_option('gotowebinar_auth_settings');

// Delete Transients
delete_transient('northern_beaches_websites');
delete_site_transient('northern_beaches_websites');
delete_transient('wp-gotowebinar-update');
delete_site_transient('wp-gotowebinar-update');
delete_transient('gotowebinar_auth_settings');
delete_site_transient('gotowebinar_auth_settings');

