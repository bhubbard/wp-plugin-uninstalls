<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('maintenance_meta');
delete_site_option('maintenance_meta');
delete_option('maintenance_options');
delete_site_option('maintenance_options');
delete_option('mtnc_db_version');
delete_site_option('mtnc_db_version');

