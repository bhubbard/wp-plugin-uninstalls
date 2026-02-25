<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tcl');
delete_site_option('tcl');
delete_option('tsz');
delete_site_option('tsz');

