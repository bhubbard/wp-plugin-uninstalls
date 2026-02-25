<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cc-redirects');
delete_site_option('cc-redirects');

// Delete Transients
delete_transient('settings_errors');
delete_site_transient('settings_errors');

