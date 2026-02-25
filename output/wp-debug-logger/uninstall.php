<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('wp-debug-logger-updated');
delete_site_transient('wp-debug-logger-updated');

