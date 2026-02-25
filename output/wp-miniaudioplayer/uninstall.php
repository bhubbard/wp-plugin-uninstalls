<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('miniAudioPlayer_excluded');
delete_site_option('miniAudioPlayer_excluded');
delete_option('miniAudioPlayer_showVolumeLevel');
delete_site_option('miniAudioPlayer_showVolumeLevel');
delete_option('miniAudioPlayer_allowMute');
delete_site_option('miniAudioPlayer_allowMute');
delete_option('miniAudioPlayer_showTime');
delete_site_option('miniAudioPlayer_showTime');
delete_option('miniAudioPlayer_showRew');
delete_site_option('miniAudioPlayer_showRew');
delete_option('miniAudioPlayer_width');
delete_site_option('miniAudioPlayer_width');
delete_option('miniAudioPlayer_skin');
delete_site_option('miniAudioPlayer_skin');
delete_option('miniAudioPlayer_animate');
delete_site_option('miniAudioPlayer_animate');
delete_option('miniAudioPlayer_add_gradient');
delete_site_option('miniAudioPlayer_add_gradient');
delete_option('miniAudioPlayer_volume');
delete_site_option('miniAudioPlayer_volume');
delete_option('miniAudioPlayer_download');
delete_site_option('miniAudioPlayer_download');
delete_option('miniAudioPlayer_custom_skin_name');
delete_site_option('miniAudioPlayer_custom_skin_name');
delete_option('miniAudioPlayer_download_security');
delete_site_option('miniAudioPlayer_download_security');
delete_option('miniAudioPlayer_donate');
delete_site_option('miniAudioPlayer_donate');
delete_option('miniAudioPlayer_getMetadata');
delete_site_option('miniAudioPlayer_getMetadata');
delete_option('miniAudioPlayer_version');
delete_site_option('miniAudioPlayer_version');
delete_option('miniAudioPlayer_customizer');
delete_site_option('miniAudioPlayer_customizer');
delete_option('miniAudioPlayer_custom_skin_css');
delete_site_option('miniAudioPlayer_custom_skin_css');
delete_option('miniAudioPlayer_active_all');
delete_site_option('miniAudioPlayer_active_all');
delete_option('miniAudioPlayer_replaceDefault');
delete_site_option('miniAudioPlayer_replaceDefault');
delete_option('miniAudioPlayer_replaceDefault_show_title');
delete_site_option('miniAudioPlayer_replaceDefault_show_title');
delete_option('miniAudioPlayer_custom_skin_css ');
delete_site_option('miniAudioPlayer_custom_skin_css ');
delete_option('miniAudioPlayer_use_html5_download');
delete_site_option('miniAudioPlayer_use_html5_download');
delete_option('miniAudioPlayer_autoplay');
delete_site_option('miniAudioPlayer_autoplay');

