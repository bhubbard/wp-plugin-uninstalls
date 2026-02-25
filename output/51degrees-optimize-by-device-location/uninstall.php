<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fiftyonedegrees_ga_enable_tracking');
delete_site_option('fiftyonedegrees_ga_enable_tracking');

