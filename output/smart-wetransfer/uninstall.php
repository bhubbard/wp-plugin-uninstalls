<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wetransfer_key');
delete_site_option('wetransfer_key');
delete_option('jal_db_version');
delete_site_option('jal_db_version');

