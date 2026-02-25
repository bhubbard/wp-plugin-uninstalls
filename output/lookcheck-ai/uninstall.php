<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lookcheck_license_key');
delete_site_option('lookcheck_license_key');
delete_option('lookcheck_settings');
delete_site_option('lookcheck_settings');

// Delete Transients
delete_transient('lookcheck_api_status');
delete_site_transient('lookcheck_api_status');

