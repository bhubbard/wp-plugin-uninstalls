<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('key_keequotes');
delete_site_option('key_keequotes');
delete_option('data_license_keequote');
delete_site_option('data_license_keequote');

