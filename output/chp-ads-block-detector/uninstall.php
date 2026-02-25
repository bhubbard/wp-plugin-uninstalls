<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('chp_adb_plugin_title');
delete_site_option('chp_adb_plugin_title');
delete_option('chpadb_plugin_settings');
delete_site_option('chpadb_plugin_settings');
delete_option('registred_chp_abd_settings');
delete_site_option('registred_chp_abd_settings');

