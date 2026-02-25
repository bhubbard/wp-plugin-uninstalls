<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('swe_scss_box_value');
delete_site_option('swe_scss_box_value');
delete_option('swe_box_value_status');
delete_site_option('swe_box_value_status');

