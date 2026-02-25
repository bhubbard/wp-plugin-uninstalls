<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpvero_api_key');
delete_site_option('wpvero_api_key');
delete_option('wpvero_ignore_user');
delete_site_option('wpvero_ignore_user');
delete_option('wpvero_track_posts');
delete_site_option('wpvero_track_posts');
delete_option('wpvero_track_pages');
delete_site_option('wpvero_track_pages');
delete_option('wpvero_track_searches');
delete_site_option('wpvero_track_searches');

