<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('CUSTOM_ACCESS_LITE_opties_array');
delete_site_option('CUSTOM_ACCESS_LITE_opties_array');
delete_option('CUSTOM_ACCESS_LITE_email_options');
delete_site_option('CUSTOM_ACCESS_LITE_email_options');
delete_option('CUSTOM_ACCESS_LITE_Logger_pages');
delete_site_option('CUSTOM_ACCESS_LITE_Logger_pages');
delete_option('CUSTOM_ACCESS_LITE_VERSION');
delete_site_option('CUSTOM_ACCESS_LITE_VERSION');
delete_option('my_plugin_db_version');
delete_site_option('my_plugin_db_version');

