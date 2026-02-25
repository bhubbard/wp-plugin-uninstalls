<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('payu_api_db_version');
delete_site_option('payu_api_db_version');
delete_option('plugin_db_version');
delete_site_option('plugin_db_version');

