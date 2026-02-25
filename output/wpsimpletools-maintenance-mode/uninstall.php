<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pageTitle');
delete_site_option('pageTitle');
delete_option('pageText');
delete_site_option('pageText');
delete_option('enabled');
delete_site_option('enabled');
delete_option('maintenancePage');
delete_site_option('maintenancePage');
delete_option('url');
delete_site_option('url');

