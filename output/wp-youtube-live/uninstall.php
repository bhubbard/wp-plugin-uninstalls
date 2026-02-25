<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('youtube_live_settings');
delete_site_option('youtube_live_settings');
delete_option('wp-youtube-live-1714-notice-dismissed');
delete_site_option('wp-youtube-live-1714-notice-dismissed');
delete_option('youtube_live_version');
delete_site_option('youtube_live_version');

// Delete Transients
delete_transient('wp-youtube-live-api-response');
delete_site_transient('wp-youtube-live-api-response');
delete_transient('youtube-live-upcoming-videos');
delete_site_transient('youtube-live-upcoming-videos');

