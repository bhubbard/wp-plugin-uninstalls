<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pa_db_version');
delete_site_option('pa_db_version');
delete_option('pa_plugins');
delete_site_option('pa_plugins');
delete_option('pa_active_plugins');
delete_site_option('pa_active_plugins');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

