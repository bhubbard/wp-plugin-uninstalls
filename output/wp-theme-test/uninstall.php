<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('wptt-updates');
delete_site_transient('wptt-updates');
delete_transient('wptt-errors');
delete_site_transient('wptt-errors');

