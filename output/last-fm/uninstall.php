<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lastfm_username');
delete_site_option('lastfm_username');
delete_option('lastfm_lastchecked');
delete_site_option('lastfm_lastchecked');
delete_option('lastfm_widget_title');
delete_site_option('lastfm_widget_title');
delete_option('lastfm_track_data');
delete_site_option('lastfm_track_data');
delete_option('lastfm_widget_count');
delete_site_option('lastfm_widget_count');
delete_option('lastfm_widget_length');
delete_site_option('lastfm_widget_length');
delete_option('lastfm_widget_dots');
delete_site_option('lastfm_widget_dots');
delete_option('lastfm_widget_now');
delete_site_option('lastfm_widget_now');
delete_option('lastfm_widget_covers');
delete_site_option('lastfm_widget_covers');
delete_option('lastfm_api_key');
delete_site_option('lastfm_api_key');

