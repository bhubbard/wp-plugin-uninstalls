<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mbdb_version');
delete_site_option('mbdb_version');
delete_option('mbdb_options');
delete_site_option('mbdb_options');

