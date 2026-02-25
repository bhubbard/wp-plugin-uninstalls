<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('usercheck_api_key');
delete_site_option('usercheck_api_key');

// Delete Transients
delete_transient('usercheck_error_logs');
delete_site_transient('usercheck_error_logs');

