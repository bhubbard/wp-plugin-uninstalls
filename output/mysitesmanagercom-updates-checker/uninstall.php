<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('freshideas_wpui_settings');
delete_site_option('freshideas_wpui_settings');
delete_option('freshideas_wpui_settings_ver');
delete_site_option('freshideas_wpui_settings_ver');

// Delete Transients
delete_transient('update_core');
delete_site_transient('update_core');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');

