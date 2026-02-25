<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dv_settings');
delete_site_option('dv_settings');
delete_option('my_db_version');
delete_site_option('my_db_version');
delete_option('dv_settings_style');
delete_site_option('dv_settings_style');
delete_option('dv_settings_avis');
delete_site_option('dv_settings_avis');
delete_option('dialv_plugin_version');
delete_site_option('dialv_plugin_version');

