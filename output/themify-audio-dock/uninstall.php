<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('themify_audio_dock_playlist');
delete_site_option('themify_audio_dock_playlist');
delete_option('themify_audio_dock_collapsed');
delete_site_option('themify_audio_dock_collapsed');
delete_option('themify_audio_dock_bar_color');
delete_site_option('themify_audio_dock_bar_color');
delete_option('themify_audio_dock_track_color');
delete_site_option('themify_audio_dock_track_color');
delete_option('themify_audio_dock_autoplay');
delete_site_option('themify_audio_dock_autoplay');

