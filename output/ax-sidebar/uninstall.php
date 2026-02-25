<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('axSidebar_db_version');
delete_site_option('axSidebar_db_version');
delete_option('axSidebar_code_version');
delete_site_option('axSidebar_code_version');
delete_option('ax_sidebar_widget_options');
delete_site_option('ax_sidebar_widget_options');

