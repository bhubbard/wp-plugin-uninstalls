<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hwan_show_dashboard_notices');
delete_site_option('hwan_show_dashboard_notices');
delete_option('hwan_plugin_version');
delete_site_option('hwan_plugin_version');

