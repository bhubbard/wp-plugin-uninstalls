<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simple_lyteLoad');
delete_site_option('simple_lyteLoad');

// Delete Transients
delete_transient('bainternetNews');
delete_site_transient('bainternetNews');

