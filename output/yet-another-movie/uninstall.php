<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('moviehelper-version');
delete_site_option('moviehelper-version');
delete_option('moviehelper_tmdb_settings');
delete_site_option('moviehelper_tmdb_settings');
delete_option('moviehelper_settings');
delete_site_option('moviehelper_settings');

// Delete Transients
delete_transient('tmdb_api_key');
delete_site_transient('tmdb_api_key');

