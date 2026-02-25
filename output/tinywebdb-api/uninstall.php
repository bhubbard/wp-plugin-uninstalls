<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_tinywebdb_api_url_trigger');
delete_site_option('wp_tinywebdb_api_url_trigger');
delete_option('wp_tinywebdb_api_key');
delete_site_option('wp_tinywebdb_api_key');
delete_option('wp_tinywebdb_api_tag_type');
delete_site_option('wp_tinywebdb_api_tag_type');

