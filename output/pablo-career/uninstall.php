<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pablo_single_page');
delete_site_option('pablo_single_page');
delete_option('pablo_db_version');
delete_site_option('pablo_db_version');

