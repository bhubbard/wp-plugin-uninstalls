<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('FNSSL_exceptions');
delete_site_option('FNSSL_exceptions');
delete_option('FNSSL_options');
delete_site_option('FNSSL_options');

