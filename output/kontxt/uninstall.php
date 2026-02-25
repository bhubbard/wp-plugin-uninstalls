<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kontxt_include_location');
delete_site_option('kontxt_include_location');

// Delete Transients
delete_transient('settings_errors');
delete_site_transient('settings_errors');

