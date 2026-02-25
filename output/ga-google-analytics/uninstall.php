<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gap_options');
delete_site_option('gap_options');
delete_option('ga-google-analytics-dismiss-notice');
delete_site_option('ga-google-analytics-dismiss-notice');

