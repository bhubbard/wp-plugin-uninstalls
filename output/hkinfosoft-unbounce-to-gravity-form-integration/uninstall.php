<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('u2g_plugin_version');
delete_site_option('u2g_plugin_version');
delete_option('u2g_integration_redirect');
delete_site_option('u2g_integration_redirect');
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');
delete_option('u2g_integration_options');
delete_site_option('u2g_integration_options');
delete_option('u2g_db_version');
delete_site_option('u2g_db_version');

