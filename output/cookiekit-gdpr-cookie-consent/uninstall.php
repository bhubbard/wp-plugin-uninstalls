<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cookiekit_settings');
delete_site_option('cookiekit_settings');
delete_option('cookiekit_logo_id');
delete_site_option('cookiekit_logo_id');
delete_option('cookiekit_version');
delete_site_option('cookiekit_version');

// Delete Transients
delete_transient('cookiekit_export_data');
delete_site_transient('cookiekit_export_data');

