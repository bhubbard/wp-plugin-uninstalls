<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_transient_timeout_tests_as_array');
delete_site_option('_transient_timeout_tests_as_array');
delete_option('_transient_timeout_tests_as_zero');
delete_site_option('_transient_timeout_tests_as_zero');

