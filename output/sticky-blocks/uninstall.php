<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('stky_custom_css');
delete_site_option('stky_custom_css');
delete_option('stky_db_version');
delete_site_option('stky_db_version');

// Delete Transients
delete_transient('stky_admin_success_message');
delete_site_transient('stky_admin_success_message');
delete_transient('stky_admin_error_message');
delete_site_transient('stky_admin_error_message');

