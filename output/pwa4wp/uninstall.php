<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pwa4wp_manifest');
delete_site_option('pwa4wp_manifest');
delete_option('pwa4wp_cache_settings');
delete_site_option('pwa4wp_cache_settings');
delete_option('pwa4wp_app_iconurl');
delete_site_option('pwa4wp_app_iconurl');
delete_option('pwa4wp_app_icons');
delete_site_option('pwa4wp_app_icons');
delete_option('pwa4wp_sw_version');
delete_site_option('pwa4wp_sw_version');
delete_option('pwa4wp_advanced');
delete_site_option('pwa4wp_advanced');
delete_option('pwa4wp_manifest_created');
delete_site_option('pwa4wp_manifest_created');
delete_option('pwa4wp_sw_created');
delete_site_option('pwa4wp_sw_created');
delete_option('pwa4wp_sw_installation_switch');
delete_site_option('pwa4wp_sw_installation_switch');
delete_option('pwa4wp_multisite_unify');
delete_site_option('pwa4wp_multisite_unify');
delete_option('pwa4wp_defer_install');
delete_site_option('pwa4wp_defer_install');
delete_option('pwa4wp_push_enable');
delete_site_option('pwa4wp_push_enable');

