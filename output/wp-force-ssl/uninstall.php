<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('wpssl_tests_results');
delete_site_transient('wpssl_tests_results');
delete_transient('wpfs_ssl_status');
delete_site_transient('wpfs_ssl_status');
delete_transient('update_plugins');
delete_site_transient('update_plugins');

