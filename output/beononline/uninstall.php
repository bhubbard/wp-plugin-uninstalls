<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('example_option');
delete_site_option('example_option');
delete_option('another_example_option');
delete_site_option('another_example_option');

