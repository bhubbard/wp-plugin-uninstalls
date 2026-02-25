<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sl_general_settings');
delete_site_option('sl_general_settings');
delete_option('sl_db_version');
delete_site_option('sl_db_version');

