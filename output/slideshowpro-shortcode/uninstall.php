<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vcu_option_name');
delete_site_option('vcu_option_name');
delete_option('vcu_option_width');
delete_site_option('vcu_option_width');
delete_option('vcu_option_height');
delete_site_option('vcu_option_height');
delete_option('vcu_option_style');
delete_site_option('vcu_option_style');
delete_option('vcu_option_content_scale');
delete_site_option('vcu_option_content_scale');
delete_option('vcu_option_transition');
delete_site_option('vcu_option_transition');
delete_option('vcu_option_preloader');
delete_site_option('vcu_option_preloader');
delete_option('vcu_option_auto_playback');
delete_site_option('vcu_option_auto_playback');
delete_option('vcu_option_pan_zoom');
delete_site_option('vcu_option_pan_zoom');
delete_option('vcu_option_mouseover_navigation');
delete_site_option('vcu_option_mouseover_navigation');
delete_option('vcu_option_open_gallery');
delete_site_option('vcu_option_open_gallery');
delete_option('vcu_option_auto_start_videos');
delete_site_option('vcu_option_auto_start_videos');
delete_option('vcu_option_thumbnail_links');
delete_site_option('vcu_option_thumbnail_links');

