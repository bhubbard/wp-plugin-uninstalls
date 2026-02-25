<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bitgfzc_erase_all');
delete_site_option('bitgfzc_erase_all');
delete_option('bitgfzc_db_version');
delete_site_option('bitgfzc_db_version');
delete_option('bitgfzc_installed');
delete_site_option('bitgfzc_installed');
delete_option('bitgfzc_version');
delete_site_option('bitgfzc_version');
delete_option('bitgfzc_routes');
delete_site_option('bitgfzc_routes');

