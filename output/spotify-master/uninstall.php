<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('spotify_master_load_size_basic');
delete_site_option('spotify_master_load_size_basic');
delete_option('spotify_master_load_size_detailed');
delete_site_option('spotify_master_load_size_detailed');
delete_option('spotify_master_load_theme_light');
delete_site_option('spotify_master_load_theme_light');
delete_option('spotify_master_load_theme_dark');
delete_site_option('spotify_master_load_theme_dark');
delete_option('spotifybutton_size_choice');
delete_site_option('spotifybutton_size_choice');
delete_option('spotifybutton_theme_choice');
delete_site_option('spotifybutton_theme_choice');
delete_option('tsm_quote');
delete_site_option('tsm_quote');

