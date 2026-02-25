<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpcheckr-site-connected');
delete_site_option('wpcheckr-site-connected');
delete_option('wpcheckr_settings');
delete_site_option('wpcheckr_settings');
delete_option('wpcheckr-secret-string');
delete_site_option('wpcheckr-secret-string');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');

