<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rdc_hour');
delete_site_option('rdc_hour');
delete_option('rdc_minute');
delete_site_option('rdc_minute');

