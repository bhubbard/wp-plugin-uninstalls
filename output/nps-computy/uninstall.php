<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nps_option_name');
delete_site_option('nps_option_name');
delete_option('npsc_db_version');
delete_site_option('npsc_db_version');

