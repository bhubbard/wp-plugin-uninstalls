<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simplify_dashboard_menu_items');
delete_site_option('simplify_dashboard_menu_items');
delete_option('simplify_dashboard_topbar_items');
delete_site_option('simplify_dashboard_topbar_items');

