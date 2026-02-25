<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('saudadpr_enabled');
delete_site_option('saudadpr_enabled');
delete_option('saudadpr_api_key');
delete_site_option('saudadpr_api_key');
delete_option('saudadpr_api_url');
delete_site_option('saudadpr_api_url');
delete_option('saudadpr_language');
delete_site_option('saudadpr_language');
delete_option('saudadpr_show_courier_preview');
delete_site_option('saudadpr_show_courier_preview');
delete_option('saudadpr_migrated');
delete_site_option('saudadpr_migrated');

