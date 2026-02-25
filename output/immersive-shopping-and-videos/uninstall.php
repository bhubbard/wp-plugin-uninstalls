<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('immersive_shopping_videos_api_key');
delete_site_option('immersive_shopping_videos_api_key');
delete_option('immersive_shopping_videos_version');
delete_site_option('immersive_shopping_videos_version');
delete_option('immersive_shopping_videos_operations');
delete_site_option('immersive_shopping_videos_operations');
delete_option('immersive_shopping_videos_app_id');
delete_site_option('immersive_shopping_videos_app_id');
delete_option('immersive_shopping_videos_settings');
delete_site_option('immersive_shopping_videos_settings');
delete_option('immersive_shopping_videos_db_version');
delete_site_option('immersive_shopping_videos_db_version');

// Delete Transients
delete_transient('immersive_shopping_videos_temp_data');
delete_site_transient('immersive_shopping_videos_temp_data');
delete_transient('immersive_shopping_videos_cache');
delete_site_transient('immersive_shopping_videos_cache');

