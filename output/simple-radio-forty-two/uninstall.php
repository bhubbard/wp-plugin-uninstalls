<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sr42_podcast_url');
delete_site_option('sr42_podcast_url');
delete_option('sr42_round_url');
delete_site_option('sr42_round_url');
delete_option('sr42_radio_title');
delete_site_option('sr42_radio_title');
delete_option('sr42_background_url');
delete_site_option('sr42_background_url');
delete_option('sr42_play_url');
delete_site_option('sr42_play_url');
delete_option('sr42_pause_url');
delete_site_option('sr42_pause_url');

