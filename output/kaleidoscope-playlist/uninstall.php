<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kaleidoscope_api_key');
delete_site_option('kaleidoscope_api_key');
delete_option('kaleidoscope_playlist_width');
delete_site_option('kaleidoscope_playlist_width');
delete_option('kaleidoscope_playlist_height');
delete_site_option('kaleidoscope_playlist_height');
delete_option('kaleidoscope_playlist_background_color');
delete_site_option('kaleidoscope_playlist_background_color');
delete_option('kaleidoscope_playlist_background_transparency');
delete_site_option('kaleidoscope_playlist_background_transparency');
delete_option('kaleidoscope_playlist_border');
delete_site_option('kaleidoscope_playlist_border');
delete_option('kaleidoscope_playlist_border_color');
delete_site_option('kaleidoscope_playlist_border_color');
delete_option('kaleidoscope_playlist_autoplay');
delete_site_option('kaleidoscope_playlist_autoplay');
delete_option('kaleidoscope_playlist_interval');
delete_site_option('kaleidoscope_playlist_interval');
delete_option('kaleidoscope_playlist_animation');
delete_site_option('kaleidoscope_playlist_animation');
delete_option('kaleidoscope_playlist_caption');
delete_site_option('kaleidoscope_playlist_caption');
delete_option('kaleidoscope_playlist_image_fit');
delete_site_option('kaleidoscope_playlist_image_fit');
delete_option('kaleidoscope_playlist_navigation');
delete_site_option('kaleidoscope_playlist_navigation');

