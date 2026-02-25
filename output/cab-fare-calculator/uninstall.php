<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tblight_installed_at');
delete_site_option('tblight_installed_at');
delete_option('tblight_plugin_version');
delete_site_option('tblight_plugin_version');
delete_option('tblight_db_version');
delete_site_option('tblight_db_version');

