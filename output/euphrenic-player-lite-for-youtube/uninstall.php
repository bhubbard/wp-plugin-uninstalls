<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('euphrenic_player_lite_for_youtube_options');
delete_site_option('euphrenic_player_lite_for_youtube_options');
delete_option('euphrenic_player_lite_for_youtube_galleries');
delete_site_option('euphrenic_player_lite_for_youtube_galleries');
delete_option('euphrenic_player_lite_for_youtube_version');
delete_site_option('euphrenic_player_lite_for_youtube_version');

// Delete Transients
delete_transient('euphrenic_activation_redirect');
delete_site_transient('euphrenic_activation_redirect');

