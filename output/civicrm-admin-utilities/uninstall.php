<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('menu_items');
delete_site_option('menu_items');
delete_option('civicrm_admin_utilities_installed');
delete_site_option('civicrm_admin_utilities_installed');
delete_option('civicrm_admin_utilities_version');
delete_site_option('civicrm_admin_utilities_version');
delete_option('civicrm_admin_utilities_settings');
delete_site_option('civicrm_admin_utilities_settings');

