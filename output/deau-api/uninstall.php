<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('deau_api');
delete_site_option('deau_api');
delete_option('deau_api_shortcodes');
delete_site_option('deau_api_shortcodes');
delete_option('deau_api_shortcode_history');
delete_site_option('deau_api_shortcode_history');
delete_option('deau_api_localhost');
delete_site_option('deau_api_localhost');

