<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pcav_enable_validation');
delete_site_option('pcav_enable_validation');
delete_option('pcav_license_key');
delete_site_option('pcav_license_key');
delete_option('pcav_api_key');
delete_site_option('pcav_api_key');
delete_option('pcav_configured_provider');
delete_site_option('pcav_configured_provider');
delete_option('pcav_hide_fields');
delete_site_option('pcav_hide_fields');
delete_option('pcav_empty_fields');
delete_site_option('pcav_empty_fields');
delete_option('pcav_enable_debugmode');
delete_site_option('pcav_enable_debugmode');
delete_option('pcav_autocomplete_off');
delete_site_option('pcav_autocomplete_off');
delete_option('pcav_housenumber_and_addition_line_2');
delete_site_option('pcav_housenumber_and_addition_line_2');
delete_option('pcav_color_placeholder');
delete_site_option('pcav_color_placeholder');
delete_option('pcav_color_result');
delete_site_option('pcav_color_result');

