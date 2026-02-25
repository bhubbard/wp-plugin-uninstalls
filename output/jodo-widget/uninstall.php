<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jwcp_jodo_widget_apikey');
delete_site_option('jwcp_jodo_widget_apikey');
delete_option('jwcp_jodo_widget_servicekey');
delete_site_option('jwcp_jodo_widget_servicekey');
delete_option('jwcp_jodo_widget_target');
delete_site_option('jwcp_jodo_widget_target');
delete_option('jwcp_jodo_widget_visible');
delete_site_option('jwcp_jodo_widget_visible');
delete_option('jwcp_jodo_widget_display');
delete_site_option('jwcp_jodo_widget_display');
delete_option('jwcp_jodo_widget_theme');
delete_site_option('jwcp_jodo_widget_theme');

// Delete Transients
delete_transient('settings_errors');
delete_site_transient('settings_errors');

