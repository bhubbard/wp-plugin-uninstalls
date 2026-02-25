<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aj_gtmetrix_results');
delete_site_option('aj_gtmetrix_results');
delete_option('aj_gtmetrix_username');
delete_site_option('aj_gtmetrix_username');
delete_option('aj_gtmetrix_api_key');
delete_site_option('aj_gtmetrix_api_key');
delete_option('aj_gtmetrix_server');
delete_site_option('aj_gtmetrix_server');
delete_option('aj_enabled');
delete_site_option('aj_enabled');
delete_option('aj_method');
delete_site_option('aj_method');
delete_option('aj_jquery');
delete_site_option('aj_jquery');
delete_option('aj_async');
delete_site_option('aj_async');
delete_option('aj_defer');
delete_site_option('aj_defer');
delete_option('aj_exclusions');
delete_site_option('aj_exclusions');
delete_option('aj_plugin_exclusions');
delete_site_option('aj_plugin_exclusions');
delete_option('aj_theme_exclusions');
delete_site_option('aj_theme_exclusions');
delete_option('aj_autoptimize_enabled');
delete_site_option('aj_autoptimize_enabled');
delete_option('aj_autoptimize_method');
delete_site_option('aj_autoptimize_method');
delete_option('aj_enabled_logged');
delete_site_option('aj_enabled_logged');
delete_option('aj_enabled_shop');
delete_site_option('aj_enabled_shop');
delete_option('aj_version');
delete_site_option('aj_version');

