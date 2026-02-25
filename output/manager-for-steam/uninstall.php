<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('steammanager_api_key');
delete_site_option('steammanager_api_key');
delete_option('steammanager_steam_id');
delete_site_option('steammanager_steam_id');
delete_option('steammanager_show_top_bar');
delete_site_option('steammanager_show_top_bar');
delete_option('steammanager_custom_templates');
delete_site_option('steammanager_custom_templates');
delete_option('steammanager_api_key_encrypted');
delete_site_option('steammanager_api_key_encrypted');
delete_option('steammanager_bad_images_cache');
delete_site_option('steammanager_bad_images_cache');
delete_option('steammanager_top_bar_pages');
delete_site_option('steammanager_top_bar_pages');

// Delete Transients
delete_transient('steammanager_activation_notice');
delete_site_transient('steammanager_activation_notice');
delete_transient('steammanager_apps_cache');
delete_site_transient('steammanager_apps_cache');
delete_transient('steammanager_profile_cache');
delete_site_transient('steammanager_profile_cache');
delete_transient('steammanager_library_cache');
delete_site_transient('steammanager_library_cache');

// Clear Cron Jobs
wp_clear_scheduled_hook('steammanager_refresh_wishlist');

