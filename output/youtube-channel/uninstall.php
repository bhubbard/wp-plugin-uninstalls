<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('youtube_channel_defaults');
delete_site_option('youtube_channel_defaults');
delete_option('youtube_channel_version');
delete_site_option('youtube_channel_version');
delete_option('youtube_channel_db_ver');
delete_site_option('youtube_channel_db_ver');
delete_option('youtube_channel_dismissed_notices');
delete_site_option('youtube_channel_dismissed_notices');

