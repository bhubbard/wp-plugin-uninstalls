<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ipros24-google-translate-options');
delete_site_option('ipros24-google-translate-options');
delete_option('ipros24-google-translate-options-wordpress');
delete_site_option('ipros24-google-translate-options-wordpress');

