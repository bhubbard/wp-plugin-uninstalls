<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('flexqr_db_version');
delete_site_option('flexqr_db_version');
delete_option('flexqr_settings');
delete_site_option('flexqr_settings');
delete_option('flexqr_license_key');
delete_site_option('flexqr_license_key');

