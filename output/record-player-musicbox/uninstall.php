<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('musicbox_only_homepage');
delete_site_option('musicbox_only_homepage');
delete_option('musicbox_music_url');
delete_site_option('musicbox_music_url');
delete_option('musicbox_custom_icon');
delete_site_option('musicbox_custom_icon');
delete_option('musicbox_width');
delete_site_option('musicbox_width');
delete_option('musicbox_height');
delete_site_option('musicbox_height');
delete_option('musicbox_position_left');
delete_site_option('musicbox_position_left');
delete_option('musicbox_position_bottom');
delete_site_option('musicbox_position_bottom');
delete_option('musicbox_enable_autoplay');
delete_site_option('musicbox_enable_autoplay');
delete_option('musicbox_disable_hours');
delete_site_option('musicbox_disable_hours');
delete_option('musicbox_disable_progress_memory');
delete_site_option('musicbox_disable_progress_memory');
delete_option('musicbox_disable_mobile_autoplay');
delete_site_option('musicbox_disable_mobile_autoplay');

