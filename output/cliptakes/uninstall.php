<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cliptakes_subscription');
delete_site_option('cliptakes_subscription');
delete_option('cliptakes_api_settings_options');
delete_site_option('cliptakes_api_settings_options');
delete_option('cliptakes_general_settings_options');
delete_site_option('cliptakes_general_settings_options');
delete_option('cliptakes_plugin_version');
delete_site_option('cliptakes_plugin_version');

// Delete Transients
delete_transient('cliptakes_activation_redirect');
delete_site_transient('cliptakes_activation_redirect');

