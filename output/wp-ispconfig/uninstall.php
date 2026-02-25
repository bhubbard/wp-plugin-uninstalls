<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('wpispconfig_websites_dashboard');
delete_site_transient('wpispconfig_websites_dashboard');

