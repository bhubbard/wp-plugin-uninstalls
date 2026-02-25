<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cya11y_widget_settings');
delete_site_option('cya11y_widget_settings');
delete_option('widget_accesstxt');
delete_site_option('widget_accesstxt');
delete_option('cya11y_banners');
delete_site_option('cya11y_banners');
delete_option('cya11y_version');
delete_site_option('cya11y_version');
delete_option('cya11y_first_time_activated_plugin');
delete_site_option('cya11y_first_time_activated_plugin');

// Delete Transients
delete_transient('_cya11y_first_time_install');
delete_site_transient('_cya11y_first_time_install');
delete_transient('cya11y_first_time_install');
delete_site_transient('cya11y_first_time_install');

