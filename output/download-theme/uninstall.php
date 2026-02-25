<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('download_theme_popup_status');
delete_site_option('download_theme_popup_status');
delete_option('dtwap_dismissible_plugin');
delete_site_option('dtwap_dismissible_plugin');
delete_option('dtwap_dismissible_plugin_expiration');
delete_site_option('dtwap_dismissible_plugin_expiration');
delete_option('dtwap_enable_bookmark');
delete_site_option('dtwap_enable_bookmark');

