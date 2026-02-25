<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pf7_last_license_check');
delete_site_option('pf7_last_license_check');

// Delete Transients
delete_transient('pf7_license_details');
delete_site_transient('pf7_license_details');

