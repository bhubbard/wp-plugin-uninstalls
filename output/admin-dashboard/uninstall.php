<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dashboard_dashboard_menus');
delete_site_option('dashboard_dashboard_menus');
delete_option('dashboard_social');
delete_site_option('dashboard_social');

