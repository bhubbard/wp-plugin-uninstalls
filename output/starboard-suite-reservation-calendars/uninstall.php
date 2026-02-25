<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('starboard_suite_settings');
delete_site_option('starboard_suite_settings');
delete_option('starboard_suite_subdomain');
delete_site_option('starboard_suite_subdomain');

