<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mbsync_host');
delete_site_option('mbsync_host');
delete_option('mbsync_db');
delete_site_option('mbsync_db');
delete_option('mbsync_db_username');
delete_site_option('mbsync_db_username');
delete_option('mbsync_db_password');
delete_site_option('mbsync_db_password');
delete_option('mbsync_tableprefix');
delete_site_option('mbsync_tableprefix');
delete_option('mbsync_mybbroot');
delete_site_option('mbsync_mybbroot');

