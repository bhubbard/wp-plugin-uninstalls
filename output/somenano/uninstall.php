<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('$somenano_db_version');
delete_site_option('$somenano_db_version');
delete_option('$somenano_version');
delete_site_option('$somenano_version');
delete_option('somenano_options');
delete_site_option('somenano_options');

