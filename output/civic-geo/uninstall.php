<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('google_civic_key');
delete_site_option('google_civic_key');
delete_option('congress_google_map_api_key');
delete_site_option('congress_google_map_api_key');
delete_option('congress_cache');
delete_site_option('congress_cache');
delete_option('congress_cache_time');
delete_site_option('congress_cache_time');
delete_option('congress_options');
delete_site_option('congress_options');
delete_option('congress_redirect_url');
delete_site_option('congress_redirect_url');
delete_option('congress_shortcodes');
delete_site_option('congress_shortcodes');
delete_option('congress_themes');
delete_site_option('congress_themes');
delete_option('congress_photos_last_modified');
delete_site_option('congress_photos_last_modified');

