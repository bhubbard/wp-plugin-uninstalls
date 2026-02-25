<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ais_services_last_changed');
delete_site_option('ais_services_last_changed');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

