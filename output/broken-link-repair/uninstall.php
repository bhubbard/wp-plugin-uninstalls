<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hexometer-property-token');
delete_site_option('hexometer-property-token');
delete_option('hexometer-property-disable-auto-fix');
delete_site_option('hexometer-property-disable-auto-fix');
delete_option('hexometer_last_scan');
delete_site_option('hexometer_last_scan');

