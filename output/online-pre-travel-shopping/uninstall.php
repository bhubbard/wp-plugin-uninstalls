<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sfts_settings_value');
delete_site_option('sfts_settings_value');
delete_option('shortcode_default_rectangle');
delete_site_option('shortcode_default_rectangle');
delete_option('shortcode_default_wide');
delete_site_option('shortcode_default_wide');
delete_option('shortcode_default_narrow');
delete_site_option('shortcode_default_narrow');
delete_option('shortcode_default_dynamic-width');
delete_site_option('shortcode_default_dynamic-width');

