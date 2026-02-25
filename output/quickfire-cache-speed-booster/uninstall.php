<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ssbc_settings');
delete_site_option('ssbc_settings');
delete_option('ssbc_db_version');
delete_site_option('ssbc_db_version');

