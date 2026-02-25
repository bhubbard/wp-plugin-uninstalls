<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('epcf7_options');
delete_site_option('epcf7_options');
delete_option('epcf7_custom_charts');
delete_site_option('epcf7_custom_charts');

