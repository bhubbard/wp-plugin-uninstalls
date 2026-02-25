<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('mwfk-updates');
delete_site_transient('mwfk-updates');
delete_transient('mwfk-errors');
delete_site_transient('mwfk-errors');

