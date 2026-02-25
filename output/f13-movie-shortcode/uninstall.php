<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('omdb_api_key');
delete_site_option('omdb_api_key');
delete_option('tmdb_api_key');
delete_site_option('tmdb_api_key');
delete_option('f13_movie_preferred_api');
delete_site_option('f13_movie_preferred_api');

