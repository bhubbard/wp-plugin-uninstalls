<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wfktyh_menu_import_export');
delete_site_option('wfktyh_menu_import_export');
delete_option('wfktyh_menu_import_export_version');
delete_site_option('wfktyh_menu_import_export_version');

