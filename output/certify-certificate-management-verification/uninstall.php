<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('certify_plugin_options');
delete_site_option('certify_plugin_options');
delete_option('certify_db_version');
delete_site_option('certify_db_version');

