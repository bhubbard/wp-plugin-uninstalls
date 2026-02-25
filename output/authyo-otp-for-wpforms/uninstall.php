<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('authyo_wpforms_settings');
delete_site_option('authyo_wpforms_settings');
delete_option('authyo_wpforms_countries_cache');
delete_site_option('authyo_wpforms_countries_cache');
delete_option('authyo_wpforms_enabled_channels');
delete_site_option('authyo_wpforms_enabled_channels');
delete_option('authyo_wpforms_form_settings');
delete_site_option('authyo_wpforms_form_settings');

// Delete Transients
delete_transient('authyo_wpforms_trigger_tracking');
delete_site_transient('authyo_wpforms_trigger_tracking');

