<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('inbox_enabled');
delete_site_option('inbox_enabled');
delete_option('inbox_api_key');
delete_site_option('inbox_api_key');
delete_option('ib_db_ver');
delete_site_option('ib_db_ver');
delete_option('ib_plugin_activated');
delete_site_option('ib_plugin_activated');
delete_option('ib_install_date');
delete_site_option('ib_install_date');

