<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('word_balloon_pro_license_info');
delete_site_option('word_balloon_pro_license_info');
delete_option('word_balloon_wallpaper_settings');
delete_site_option('word_balloon_wallpaper_settings');
delete_option('word_balloon_favorite_settings');
delete_site_option('word_balloon_favorite_settings');
delete_option('word_balloon_admin_settings');
delete_site_option('word_balloon_admin_settings');
delete_option('word_balloon_post_settings');
delete_site_option('word_balloon_post_settings');
delete_option('word_balloon_system_settings');
delete_site_option('word_balloon_system_settings');
delete_option('word_balloon_version');
delete_site_option('word_balloon_version');
delete_option('word_balloon_db_version');
delete_site_option('word_balloon_db_version');
delete_option('word_balloon');
delete_site_option('word_balloon');

