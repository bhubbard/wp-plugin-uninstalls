<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zip_easy_maintenance_settings');
delete_site_option('zip_easy_maintenance_settings');

