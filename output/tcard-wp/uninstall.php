<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tcards_table_db_version');
delete_site_option('tcards_table_db_version');
delete_option('tcard_skin_db_version');
delete_site_option('tcard_skin_db_version');

