<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('advanced_rating_setting');
delete_site_option('advanced_rating_setting');
delete_option('advanced_rating_settings');
delete_site_option('advanced_rating_settings');
delete_option('rating_theme_settings');
delete_site_option('rating_theme_settings');
delete_option('rating_db_version');
delete_site_option('rating_db_version');

