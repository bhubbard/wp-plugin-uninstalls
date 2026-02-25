<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('suggestion_toolkit_youtube_api_key');
delete_site_option('suggestion_toolkit_youtube_api_key');
delete_option('suggestion_toolkit_youtube_my');
delete_site_option('suggestion_toolkit_youtube_my');
delete_option('suggestion_toolkit_youtube_event_type');
delete_site_option('suggestion_toolkit_youtube_event_type');

