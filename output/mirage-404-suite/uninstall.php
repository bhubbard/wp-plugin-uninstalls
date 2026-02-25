<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mirage_settings');
delete_site_option('mirage_settings');
delete_option('mirage_db_version');
delete_site_option('mirage_db_version');

