<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('apoyl-qq-settings');
delete_site_option('apoyl-qq-settings');
delete_option('apoyl_qq_db_version');
delete_site_option('apoyl_qq_db_version');

