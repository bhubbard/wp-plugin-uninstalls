<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bbb_admin_panel_plugin_version');
delete_site_option('bbb_admin_panel_plugin_version');
delete_option('bbb_admin_panel_url');
delete_site_option('bbb_admin_panel_url');
delete_option('bbb_admin_panel_salt');
delete_site_option('bbb_admin_panel_salt');
delete_option('bbb_admin_panel_permissions');
delete_site_option('bbb_admin_panel_permissions');
delete_option('bbb_db_version');
delete_site_option('bbb_db_version');
delete_option('mt_bbb_url');
delete_site_option('mt_bbb_url');
delete_option('mt_salt');
delete_site_option('mt_salt');
delete_option('bbb_admin_panel_widget_title');
delete_site_option('bbb_admin_panel_widget_title');

