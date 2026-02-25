<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mep_video_skin');
delete_site_option('mep_video_skin');
delete_option('mep_script_on_demand');
delete_site_option('mep_script_on_demand');
delete_option('mep_default_video_height');
delete_site_option('mep_default_video_height');
delete_option('mep_default_video_width');
delete_site_option('mep_default_video_width');
delete_option('mep_default_video_type');
delete_site_option('mep_default_video_type');
delete_option('mep_default_audio_height');
delete_site_option('mep_default_audio_height');
delete_option('mep_default_audio_width');
delete_site_option('mep_default_audio_width');
delete_option('mep_default_audio_type');
delete_site_option('mep_default_audio_type');

