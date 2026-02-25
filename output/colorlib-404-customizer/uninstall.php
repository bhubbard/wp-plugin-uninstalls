<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cnfp_settings');
delete_site_option('cnfp_settings');

// Delete Transients
delete_transient('cnfp_review');
delete_site_transient('cnfp_review');

