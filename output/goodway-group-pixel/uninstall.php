<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('goodway');
delete_site_option('goodway');
delete_option('goodway_db_version');
delete_site_option('goodway_db_version');

