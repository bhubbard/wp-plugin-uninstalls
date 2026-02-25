<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('offline_precache_enabled_ga');
delete_site_option('offline_precache_enabled_ga');
delete_option('offline_precache_page_id');
delete_site_option('offline_precache_page_id');
delete_option('Activated_Offline_Precache');
delete_site_option('Activated_Offline_Precache');
delete_option('offline_precache_custom_strategies');
delete_site_option('offline_precache_custom_strategies');
delete_option('offline_precache_enabled');
delete_site_option('offline_precache_enabled');

