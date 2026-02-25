<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('camoo_cdn_cache_settings');
delete_site_option('camoo_cdn_cache_settings');
delete_option('ossdl_off_cdn_url');
delete_site_option('ossdl_off_cdn_url');
delete_option('ossdl_off_blog_url');
delete_site_option('ossdl_off_blog_url');
delete_option('wp_camoo_cdn_oss');
delete_site_option('wp_camoo_cdn_oss');
delete_option('wp_camoo_cdn_db_version');
delete_site_option('wp_camoo_cdn_db_version');

// Delete Transients
delete_transient('wp_camoo_cdn_sync_message');
delete_site_transient('wp_camoo_cdn_sync_message');

// Clear Cron Jobs
wp_clear_scheduled_hook('wp_camoo_cdn_cron_soon');

