<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('futusign_option_name');
delete_site_option('futusign_option_name');
delete_option('futusign_db_version');
delete_site_option('futusign_db_version');
delete_option('futusign_monitor_option_name');
delete_site_option('futusign_monitor_option_name');

