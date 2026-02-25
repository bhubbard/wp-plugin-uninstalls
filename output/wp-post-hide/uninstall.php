<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('xswphp_db_version');
delete_site_option('xswphp_db_version');
delete_option('xswphp_data_migrated');
delete_site_option('xswphp_data_migrated');
delete_option('xswphp_post_types');
delete_site_option('xswphp_post_types');
delete_option('xswphp_enable');
delete_site_option('xswphp_enable');

