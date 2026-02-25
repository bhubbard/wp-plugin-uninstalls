<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sthunder_db_version');
delete_site_option('sthunder_db_version');
delete_option('sthunder_settings');
delete_site_option('sthunder_settings');

