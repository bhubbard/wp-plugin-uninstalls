<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('protected_video_player_theme_color');
delete_site_option('protected_video_player_theme_color');
delete_option('protected_video_disable_right_click');
delete_site_option('protected_video_disable_right_click');

