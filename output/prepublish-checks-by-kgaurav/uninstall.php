<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('prepublish_checks_by_kgaurav_settings_data');
delete_site_option('prepublish_checks_by_kgaurav_settings_data');

